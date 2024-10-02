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
):
    """Outputs data as netCDF tiles."""
    out_scene = satpy.Scene()
    out_scene[output_var_name] = xarray_obj[xarray_var_name][xarray_var_name]

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

    return [output_path]


def _read_template(filename: str) -> Dict[str, Any]:
    with open(filename, "r") as in_file:
        return yaml.safe_load(in_file)
