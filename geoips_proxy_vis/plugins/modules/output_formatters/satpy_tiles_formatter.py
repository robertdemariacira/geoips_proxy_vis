"""Output formatter plugin to write data as AWIPS compatible netCDF tiles."""

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
    """Writes data to AWIPS compatible netCDF files.

    Wrapper for the Satpy AWIPS tile writer:
    https://satpy.readthedocs.io/en/stable/api/satpy.writers.awips_tiled.html#satpy.writers.awips_tiled.AWIPSTiledWriter

    The tiles writer requires the following attributes to be present on the output
    DataArray object:

    "area": Pyresample AreaDefinition describing the projection the data is in.
    "product_center_latitude": The central latitude of the data.
    "product_center_longitude": The central lognitude of the data.
    "satellite_latitude": The satellite latitude.
    "satellite_longitude": The satellite longitude.
    "satellite_altitude": The satellite altitude.
    "wavelength_float": The central wavelength of the data.
    "start_time": The start time of the data.

    Many of these can be found in the "oribital_parameters" attribute on
    individual channel DataArray objects provided by Satpy.

    Args:
        xarray_obj (xr.Dataset): The Dataset to write.
        xarray_var_name (str): The variable name in the Dataset to write.
        output_var_name (str): The variable name as it will appear in the
            output file.
        config_path (str): The Satpy AWIPS tile writer requires configuration
            information to determine how to map input data/metadata to the
            output file as well as how to construct filenames.  This is the path
            to the YAML configuration file that contains this information.
        output_path (str): The directory to write tiles to.
        environment_prefix (str): The environment prefix used by the tiles
            writer to construct filenames and write metadata.
        source_name (str): The source name used by the tiles writer to construct
            filenames and write metadata.
        sector_id (str): The sector ID used by the tiles writer to construct
            filenames and write metadata.
        tile_size (Tuple[int, int]): The size, in pixels, of each tile. Should
            be a Tuple of (x, y).

    Returns:
        List[str]: List with a single element that just contains the output
            directory.
    """
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
    with open(filename, "r", encoding="utf-8") as in_file:
        return yaml.safe_load(in_file)
