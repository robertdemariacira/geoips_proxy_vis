# GeoIPS ProxyVis Plugin

This repo provides an algorithm and output formatter plugin that will generate
ProxyVis imagery and output as AWIPS2 compatible tiles.  The ProxyVis plugin
assumes that the generic Satpy reader plugin is used to provide input.  It is
possible that this code will work with other satellites, however it has only
been tested with Meteosat, Himawari, and GOES data.

## Example Scripts/YAML Products

Example YAML products have been provided demonstrating how to use this code to
produce ProxyVis AWIPS2 tiles.  The example scripts can be found in the
`tests/scripts/` dir. These make use of example YAML products provided in the
`geoips_proxy_vis/plugins/yaml/products/geo_proxy_vis_fully_specified.yaml`
file.

The test scripts use test data provided by CIRA.  To download the needed test
data, run the `tests/scripts/get_test_data.sh` script.  This will download test
data and place it in the `GEOIPS_TESTDATA_DIR` in a subdirectory named
`pvis_test_data`.

Output from these tests will be placed in various subdirectories in `tests/outputs/`.
