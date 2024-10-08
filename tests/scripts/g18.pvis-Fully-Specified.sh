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

data_subdir=pvis_test_data/g18/20241008/1600

run_procflow \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C02_G18_s20242821600218_e20242821609526_c20242821609560.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C07_G18_s20242821600218_e20242821609537_c20242821609572.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C11_G18_s20242821600218_e20242821609526_c20242821609560.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C13_G18_s20242821600218_e20242821609537_c20242821609579.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C15_G18_s20242821600218_e20242821609531_c20242821609576.nc \
    --procflow single_source \
    -l debug \
    --reader_name generic_satpy \
    --product_name g18_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --output_formatter_kwargs '{"config_path": "tile_configs/g18_proxy_vis_tile_template.yaml", "xarray_var_name":"proxy_vis", "output_var_name":"proxy_vis", "output_path":"tests/outputs/g18_tiles/", "environment_prefix":"OR", "source_name":"CIRA", "sector_id":"WFD", "tile_size":[2200, 2750], "satellite_altitude_attrib_name":"satellite_nominal_altitude", "fake_channel":2, "fill_value":-1}' \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --no_presectoring \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "abi_l1b", "channel_groups":{"0.5km":["C02"], "2km":["C07", "C11", "C13", "C15"]}, "source_name":"abi", "platform_name":"goes18"}'
ss_retval=$?

exit $((ss_retval))
