"""Output formatter to write data as netCDF tiles."""

import logging
from typing import Any, Dict, Tuple

import satpy
import xarray as xr
import yaml

LOG = logging.getLogger(__name__)

interface = "output_formatters"
family = "xrdict_to_outlist"
name = "satpy_tiles_formatter"


def call(
    xarray_obj: xr.Dataset,
    xarray_var_name: str,
    output_var_name: str,
    config_path: str,
    output_path: str,
    environment_prefix: str,
    source_name: str,
    sector_id: str,
    tile_size: Tuple[int, int],
    satellite_altitude_attrib_name: str,
    fake_channel: int,
):
    """Outputs data as netCDF tiles."""
    out_scene = satpy.Scene()
    out_scene[output_var_name] = xarray_obj[xarray_var_name][xarray_var_name]

    _add_tiles_metadata(
        out_scene[output_var_name], satellite_altitude_attrib_name, fake_channel
    )

    template = _read_template(config_path)

    out_scene.save_datasets(
        base_dir=output_path,
        writer="awips_tiled",
        environment_prefix=environment_prefix,
        tile_size=tile_size,
        source_name=source_name,
        sector_id=sector_id,
        template=template,
    )

    breakpoint()

    return [output_path]


def _add_tiles_metadata(
    data: xr.DataArray, satellite_altitude_attrib_name: str, fake_channel: int
) -> None:
    data.attrs["product_center_latitude"] = data.attrs["orbital_parameters"][
        "projection_latitude"
    ]
    data.attrs["product_center_longitude"] = data.attrs["orbital_parameters"][
        "projection_longitude"
    ]
    data.attrs["satellite_latitude"] = data.attrs["orbital_parameters"][
        "projection_latitude"
    ]
    data.attrs["satellite_longitude"] = data.attrs["orbital_parameters"][
        "projection_longitude"
    ]
    data.attrs["satellite_altitude"] = data.attrs["orbital_parameters"][
        satellite_altitude_attrib_name
    ]
    data.attrs["channel"] = fake_channel
    data.attrs["wavelength_float"] = data.attrs["wavelength"].central


def _read_template(filename: str) -> Dict[str, Any]:
    with open(filename, "r") as in_file:
        return yaml.safe_load(in_file)
