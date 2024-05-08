"""Empty plugin."""

import logging
from typing import Dict

import numpy as np
from proxy_vis import combine_dn_pvis

LOG = logging.getLogger(__name__)

interface = "algorithms"
family = "xarray_dict_to_xarray"
name = "geo_proxy_vis"


def call(xarray_dict, vis_channel_name: str, ir_channels_to_pvis_args: Dict[str, str]):
    breakpoint()
    return data
