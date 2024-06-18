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

# @ Identify and update all instances of @ found within this script appropriately.
# @  @package@ should be the name of this repository
# @ NOTE: imagery_clean preferred to avoid dependencies on external plotting packages
# @       for image consistency,
# @       though you may change the output format if required for your package testing.

# @ Note you may update other arguments within this test call, or add additional
# @ arguments.
# @ Also - the first time you run your test script, it will prompt you to update your
# @ test outputs - at that point you can populate the "tests/outputs" directory,
# @ and your next run will result in a 0 return value.

# @ Please create a separate test script for each piece of functionality you would
# @ like to test.

# @ Ensure each test script is called from the @package@/tests/test_all.sh script.

# @ Point to your desired test data file:
#     $GEOIPS_TESTDATA_DIR/test_data_@datatype@/data/@datafile@ \

# @ Select readername that matches the data file above:
#     --reader_name @readername@ \

# @ Select a product that is available for the above data type
#     --product_name @product@ \

# @ Point to the appropriate comparison directory, where you would like to store your
# @ test outputs. Test output directory name should match the test script name,
# @ by convention.
#     --compare_path "$GEOIPS_PACKAGES_DIR/@package@/tests/outputs/@test_single_source@" \

# @ Modify the run_procflow command appropriately for your use case.
# @ Notes above on individual arguments.

    # @ NOTE: --resampled_read argument required for ABI and AHI readers.
    # @ Move into "run_procflow" call if using ABI/AHI.
    # --resampled_read \

run_procflow \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C02_G16_s20241272010205_e20241272019513_c20241272019559.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C07_G16_s20241272010205_e20241272019524_c20241272019570.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C11_G16_s20241272010205_e20241272019513_c20241272019550.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C13_G16_s20241272010205_e20241272019525_c20241272019580.nc \
    $GEOIPS_TESTDATA_DIR/pvis_g16/OR_ABI-L1b-RadF-M6C15_G16_s20241272010205_e20241272019519_c20241272019568.nc \
    --procflow single_source \
    --reader_name generic_satpy \
    --product_name g16_geo_proxy_vis \
    --output_formatter satpy_tiles_formatter \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --sector_list conus \
    --reader_kwargs '{"force_compute": true, "satpy_reader": "abi_l1b", "channel_groups":{"0.5km":["C02"], "2km":["C07", "C11", "C13", "C15"]}, "start_time_meta_path":"start_time", "end_time_meta_path":"end_time", "source_name":"abi", "platform_name":"goes16"}'
ss_retval=$?

# Example for modifying command line call. Switch to an "annotated" image, then
# modify 89-Test product to swap out colormaps, ranges, etc.
# run_procflow \
#     $GEOIPS_TESTDATA_DIR/test_data_amsr2/data/AMSR2-MBT_v2r2_GW1_s202005180620480_e202005180759470_c202005180937100.nc \
#     --procflow single_source \
#     --reader_name amsr2_netcdf \
#     --product_name "89-Test" \
#     --output_formatter imagery_annotated \
#     --filename_formatter tc_fname \
#     --trackfiles ${GEOIPS_PACKAGES_DIR}/geoips/tests/sectors/tc_bdecks/bio012020.dat \
#     --trackfile_parser bdeck_parser
# ss_retval=$?

exit $((ss_retval))
