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

data_subdir=test_data_noaa_aws/data/goes16/20200918/1950

run_procflow \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C02_G16_s20202621950205_e20202621959513_c20202621959546.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C07_G16_s20202621950205_e20202621959524_c20202621959577.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C11_G16_s20202621950205_e20202621959513_c20202621959583.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C13_G16_s20202621950205_e20202621959525_c20202622000005.nc \
    $GEOIPS_TESTDATA_DIR/$data_subdir/OR_ABI-L1b-RadF-M6C15_G16_s20202621950205_e20202621959518_c20202621959594.nc \
    --procflow single_source \
    -l debug \
    --reader_name generic_satpy \
    --product_name m9_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --output_formatter_kwargs '{"config_path": "tile_configs/m9_proxy_vis_tile_template.yaml", "xarray_var_name":"proxy_vis", "output_var_name":"proxy_vis", "output_path":"/home/rdemaria/projects/2024/geoips_proxy_vis/tests/outputs/m9_tiles/", "environment_prefix":"OR", "source_name":"CIRA", "sector_id":"EFD", "tile_size":[2200, 2750], "satellite_altitude_attrib_name":"satellite_nominal_altitude", "fake_channel":2, "fill_value":-1}' \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --no_presectoring \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "abi_l1b", "channel_groups":{"0.5km":["C02"], "2km":["C07", "C11", "C13", "C15"]}, "source_name":"abi", "platform_name":"goes16"}'
ss_retval=$?

exit $((ss_retval))
