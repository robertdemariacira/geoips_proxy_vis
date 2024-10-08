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

data_subdir=pvis_test_data/ahi/20241001/2200

run_procflow \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0110.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0210.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0310.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0410.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0510.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0610.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0710.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0810.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S0910.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B03_FLDK_R05_S1010.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0110.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0210.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0310.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0410.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0510.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0610.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0710.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0810.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S0910.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B07_FLDK_R20_S1010.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0110.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0210.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0310.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0410.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0510.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0610.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0710.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0810.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S0910.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B11_FLDK_R20_S1010.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0110.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0210.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0310.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0410.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0510.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0610.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0710.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0810.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S0910.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B13_FLDK_R20_S1010.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0110.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0210.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0310.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0410.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0510.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0610.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0710.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0810.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S0910.DAT.bz2 \
    $GEOIPS_TESTDATA_DIR/$data_subdir/HS_H09_20241001_2200_B15_FLDK_R20_S1010.DAT.bz2 \
    --procflow single_source \
    -l debug \
    --reader_name generic_satpy \
    --product_name ahi9_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --output_formatter_kwargs '{"config_path": "tile_configs/ahi_proxy_vis_tile_template.yaml", "xarray_var_name":"proxy_vis", "output_var_name":"proxy_vis", "output_path":"tests/outputs/ahi_tiles/", "environment_prefix":"OR", "source_name":"CIRA", "sector_id":"EFD", "tile_size":[2200, 2750], "satellite_altitude_attrib_name":"satellite_nominal_altitude", "fake_channel":2, "fill_value":-1}' \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --no_presectoring \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "ahi_hsd", "channel_groups":{"0.5km":["B03"], "2km":["B07", "B11", "B13", "B15"]}, "source_name":"ahi9", "platform_name":"himawari9"}'
ss_retval=$?

exit $((ss_retval))
