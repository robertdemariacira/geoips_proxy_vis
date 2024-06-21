"""Output formatter to write data as netCDF tiles."""

import logging

LOG = logging.getLogger(__name__)

interface = "output_formatters"
family = "xrdict_area_product_to_outlist"
name = "satpy_tiles_formatter"


def call(xarray_dict, area_def, product_name):
    """Outputs data as netCDF tiles."""
    breakpoint()
    pass
