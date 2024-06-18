"""Empty plugin."""

import logging
from typing import Any, Dict

import numpy as np
import xarray as xr
from proxy_vis import combine_dn_pvis

LOG = logging.getLogger(__name__)

interface = "algorithms"
family = "xarray_dict_to_xarray_dict"
name = "geo_proxy_vis"

VALID_OUTPUT_RES = (combine_dn_pvis.OUTPUT_RES_05KM, combine_dn_pvis.OUTPUT_RES_2KM)


def call(
    xarray_dict: Dict[str, Dict[str, Any]],
    vis_channel_name: str,
    ir_channels_to_pvis_args: Dict[str, str],
    satellite: str,
    minutes_interval: int,
    res_2km_name: str = "2km",
    res_0p5km_name="0.5km",
    lon_name="longitude",
    lat_name="latitude",
    pvis_alg="nighttime_pvis_main_two_eq",
    dvis_alg="vis_disp_sza",
    use_saved_params=True,
    output_res=combine_dn_pvis.OUTPUT_RES_05KM,
):
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

    rad_dict = {vis_channel_name: vis_channel.data / 100.0}
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
    if norm_output_res == combine_dn_pvis.OUTPUT_RES_2KM:
        out_data = pvis_2km

    out_dict = {"proxy_vis": xr.DataArray(out_data)}

    return out_dict


def plot(data: np.ndarray, filename: str) -> None:
    import matplotlib.pyplot as plt

    fig = plt.figure(figsize=(10, 10))
    fig.tight_layout()
    ax = fig.add_subplot(1, 1, 1)
    ax.axis("off")
    ax.imshow(data, vmin=0.0, vmax=1.3, cmap="Greys_r")
    fig.savefig(filename, dpi=550, bbox_inches="tight", pad_inches=0, transparent=True)


def _normalize_output_res(output_res) -> str:
    return output_res.lower().strip()
