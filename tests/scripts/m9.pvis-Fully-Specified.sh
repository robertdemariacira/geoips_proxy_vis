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

data_subdir=pvis_test_data/m9/20240519/1100

run_procflow \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-_________-EPI______-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000009___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000010___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000011___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000012___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000013___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000014___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000015___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000016___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000017___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000018___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000019___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000020___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000021___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000022___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000023___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-HRV______-000024___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_016___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_039___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_087___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_097___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_108___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_120___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-IR_134___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-_________-PRO______-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS006___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-VIS008___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_062___-000008___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000001___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000002___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000003___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000004___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000005___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000006___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000007___-202405191100-__ \
    $GEOIPS_TESTDATA_DIR/$data_subdir/H-000-MSG2__-MSG2_IODC___-WV_073___-000008___-202405191100-__ \
    --procflow single_source \
    -l debug \
    --reader_name generic_satpy \
    --product_name m9_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --output_formatter_kwargs '{"config_path": "tile_configs/m9_proxy_vis_tile_template.yaml", "xarray_var_name":"proxy_vis", "output_var_name":"proxy_vis", "output_path":"tests/outputs/m9_tiles/", "environment_prefix":"OR", "source_name":"CIRA", "sector_id":"M9", "tile_size":[464, 464], "fake_channel":1}' \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --no_presectoring \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "seviri_l1b_hrit", "channel_groups":{"vis":["VIS006"], "ir":["IR_039", "IR_087", "IR_108", "IR_120"]}, "source_name":"meteosat9", "platform_name":"meteosat9", "load_kwargs":{"upper_right_corner":"NE"}}'
ss_retval=$?

exit $((ss_retval))
