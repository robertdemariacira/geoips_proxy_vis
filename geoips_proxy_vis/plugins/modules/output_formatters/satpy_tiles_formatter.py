"""Output formatter to write data as netCDF tiles."""

import logging

LOG = logging.getLogger(__name__)

interface = "output_formatters"
family = "xarray_data"
name = "satpy_tiles_formatter"


def call(xarray_obj, product_names, output_fnames):
    """Outputs data as netCDF tiles."""
    breakpoint()
    pass
