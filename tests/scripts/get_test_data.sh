#!/bin/bash
ahi_subdir=pvis_test_data/ahi/20241001/2200/
ahi_tar_filename=ahi_2024-10-01T22.tar

cd $GEOIPS_TESTDATA_DIR
mkdir -p $ahi_subdir
pushd $ahi_subdir
wget https://irma.cira.colostate.edu/index.php/s/R7iEXHwCxStE3Mi/download/$ahi_tar_filename
tar -xf $ahi_tar_filename
rm $ahi_tar_filename
popd
