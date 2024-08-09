"""Output formatter to write data as netCDF tiles."""

import logging

import satpy
import xarray as xr

LOG = logging.getLogger(__name__)

interface = "output_formatters"
family = "xrdict_to_outlist"
name = "satpy_tiles_formatter"


def call(xarray_obj: xr.Dataset, config_path: str):
    """Outputs data as netCDF tiles."""
    out_scene = satpy.Scene()
    out_scene["proxy_vis"] = xarray_obj["proxy_vis"]

    breakpoint()
    pass
