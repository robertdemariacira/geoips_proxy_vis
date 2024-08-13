# # # Distribution Statement A. Approved for public release. Distribution unlimited.
# # #
# # # Author:
# # # Naval Research Laboratory, Marine Meteorology Division
# # #
# # # This program is free software: you can redistribute it and/or modify it under
# # # the terms of the NRLMMD License included with this program. This program is
# # # distributed WITHOUT ANY WARRANTY; without even the implied warranty of
# # # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the included license
# # # for more details. If you did not receive the license, for more information see:
# # # https://github.com/U-S-NRL-Marine-Meteorology-Division/

#!/bin/bash

run_procflow \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C02_G16_s20241272010205_e20241272019513_c20241272019559.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C07_G16_s20241272010205_e20241272019524_c20241272019570.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C11_G16_s20241272010205_e20241272019513_c20241272019550.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C13_G16_s20241272010205_e20241272019525_c20241272019580.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C15_G16_s20241272010205_e20241272019519_c20241272019568.nc \
    --procflow single_source \
    -l debug \
    --reader_name generic_satpy \
    --product_name g16_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --output_formatter_kwargs '{"config_path": "tests/configs/foobar.yml", "xarray_var_name":"proxy_vis", "output_var_name":"proxy_vis", "output_path":"/home/rdemaria/projects/2024/geoips_proxy_vis/tests/outputs", "environment_prefix":"OR", "source_name":"CIRA", "sector_id":"GH8", "tile_size":[2200, 2750]}' \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --no_presectoring \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "abi_l1b", "channel_groups":{"0.5km":["C02"], "2km":["C07", "C11", "C13", "C15"]}, "start_time_meta_path":"start_time", "end_time_meta_path":"end_time", "source_name":"abi", "platform_name":"goes16"}'
ss_retval=$?

exit $((ss_retval))
