"""Plugin that generates ProxyVis data from IR and visible data.

Assumes the input data was produced by the Generic Satpy Reader.  This plugin
makes extensive use of the projection metadata provided by Satpy so that the
output can be used with the satpy_tiles_formatter plugin.
"""

import logging
from typing import Any, Dict, Optional

import dask
import numpy as np
import xarray as xr
from proxy_vis import combine_dn_pvis

LOG = logging.getLogger(__name__)

interface = "algorithms"
family = "xarray_dict_to_xarray_dict"
name = "geo_proxy_vis"

VALID_OUTPUT_RES = (combine_dn_pvis.OUTPUT_RES_05KM, combine_dn_pvis.OUTPUT_RES_2KM)
DATA_ARRAY_CHUNKS = 4096

SATPY_RAD_TO_PVIS_RAD_SCALE = 0.01


def call(
    xarray_dict: Dict[str, Dict[str, Any]],
    vis_channel_name: str,
    ir_channels_to_pvis_args: Dict[str, str],
    satellite: str,
    minutes_interval: int,
    res_2km_name: str = "2km",
    res_0p5km_name: str = "0.5km",
    lon_name: str = "longitude",
    lat_name: str = "latitude",
    pvis_alg: str = "nighttime_pvis_main_two_eq",
    dvis_alg: str = "vis_disp_sza",
    use_saved_params: bool = True,
    output_res: str = combine_dn_pvis.OUTPUT_RES_05KM,
    fill_value: Optional[int] = None,
):
    """Generates ProxyVis data that can be written as AWIPS2 compatible tiles.

    Assumes that the given xarray_dict contains sub-dictionaries that group
    channels by resolution.  The code assumes that there will be a
    dictionary grouping 2km res data and a dictionary containing 0.5km res data.

    Args:
        xarray_dict (Dict[str, Dict[str, Any]]): Dictionary of XArray Datasets.
            This is assumed to have come from the Generic Satpy Reader plugin.
        vis_channel_name (str): The name of the visible channel contained within
            the 0.5km sub-dictionary.
        ir_channels_to_pvis_args (Dict[str, str]): Dictionary that maps the name
            of each IR channel to its corresponding argument in the ProxyVis
            function call. For example, the mapping for GOES data and the
            "nighttime_pvis_main_two_eq" function would be:
            {"C07": "c07", "C11": "c11", "C13": "c13", "C15": "c15"}.  The
            channel_to_arg_maps module of the ProxyVis package
            (https://github.com/galina-cira/ProxyVis) provides mappings that
            will map from Satpy input to function arguments for the various
            supported satellites.
        satellite (str): The name of the input satellite.  Must be one of:
            goes16, goes17, goes18, himawari8, himawari9, meteosat-9,
            meteosat-10, meteosat-11.
        minutes_interval (int): Length in minutes of the scan of the full disk.
        res_2km_name (str, optional): The xarray_dict key whose value is the dictionary grouping 2km res data. Defaults to "2km".
        res_0p5km_name (str, optional): The xarray_dict key whose value is the dictionary grouping 0.5km res data. Defaults to "0.5km".
        lon_name (str, optional): The key in the visible sub-dictionary corresponding to the array of longitudes. Defaults to "longitude".
        lat_name (str, optional): The key in the visible sub-dictionary corresponding to the array of latitudes. Defaults to "latitude".
        pvis_alg (str, optional): The name of the ProxyVis algorithm to use. Defaults to "nighttime_pvis_main_two_eq".
        dvis_alg (str, optional): _description_. Defaults to "vis_disp_sza".
        use_saved_params (bool, optional): _description_. Defaults to True.
        output_res (str, optional): _description_. Defaults to combine_dn_pvis.OUTPUT_RES_05KM.
        fill_value (Optional[int], optional): _description_. Defaults to None.

    Raises:
        ValueError: _description_

    Returns:
        _type_: _description_
    """
    norm_output_res = _normalize_output_res(output_res)
    if norm_output_res not in VALID_OUTPUT_RES:
        raise ValueError(f"output_res: {output_res} must be one of: {VALID_OUTPUT_RES}")

    start_time = xarray_dict["METADATA"].attrs["start_datetime"]

    vis_channels = xarray_dict[res_0p5km_name]
    vis_channel = vis_channels[vis_channel_name]

    vis_lons = vis_channels[lon_name]
    vis_lats = vis_channels[lat_name]

    ir_channels = xarray_dict[res_2km_name]
    ir_lons = ir_channels[lon_name]
    ir_lats = ir_channels[lat_name]

    rad_dict = {vis_channel_name: vis_channel.data * SATPY_RAD_TO_PVIS_RAD_SCALE}
    ir_dict = {k: ir_channels[k].data for k in ir_channels_to_pvis_args.keys()}
    data_dict = {"radiances": rad_dict, "bt_temp": ir_dict}

    vis_channel_name_to_arg = {vis_channel_name: "c02"}

    pvis_0p5km, pvis_2km, _pvismin, _pvismax = combine_dn_pvis.get_all_vis_pvis(
        satellite,
        start_time,
        data_dict,
        ir_channels_to_pvis_args,
        vis_channel_name_to_arg,
        ir_lons.data,
        ir_lats.data,
        vis_lons.data,
        vis_lats.data,
        minutes_interval,
        pvis_alg,
        dvis_alg,
        use_saved_params,
        output_res,
    )

    out_data = pvis_0p5km
    area_def = vis_channel.attrs["area"]
    x, y = dask.compute(vis_channel.coords["x"], vis_channel.coords["y"])
    x.attrs["area"] = area_def
    y.attrs["area"] = area_def

    if norm_output_res == combine_dn_pvis.OUTPUT_RES_2KM:
        out_data = pvis_2km

    if fill_value is not None:
        fill_mask = ~np.isfinite(out_data)
        out_data[fill_mask] = fill_value

    as_dask = dask.array.from_array(out_data)

    # Add attributes needed by AWIPS tiles writer
    orbital_params = vis_channel.attrs["orbital_parameters"]
    out_attrs = {
        "area": area_def,
        "product_center_latitude": orbital_params["projection_latitude"],
        "product_center_longitude": orbital_params["projection_longitude"],
        "satellite_latitude": orbital_params["projection_latitude"],
        "satellite_longitude": orbital_params["projection_longitude"],
        "satellite_altitude": orbital_params["projection_altitude"],
        "wavelength_float": vis_channel.attrs["wavelength"].central,
        "start_time": start_time,
    }

    if fill_value is not None:
        out_attrs["_FillValue"] = fill_value

    out_data_array = xr.DataArray(
        as_dask, dims=["y", "x"], coords={"x": x, "y": y}, attrs=out_attrs
    )

    out_ds = xr.Dataset(data_vars={"proxy_vis": out_data_array})
    out_dict = {"proxy_vis": out_ds, "METADATA": xarray_dict["METADATA"]}

    return out_dict


def _normalize_output_res(output_res) -> str:
    return output_res.lower().strip()
