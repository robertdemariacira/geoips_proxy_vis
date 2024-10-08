#!/bin/bash
ahi_subdir=pvis_test_data/ahi/20241001/2200/
ahi_tar_filename=ahi_2024-10-01T22.tar

m9_subdir=pvis_test_data/m9/20240519/1100/
m9_tar_filename=m9_2024-05-19T11.tar

m11_subdir=pvis_test_data/m11/20241008/1700/
m11_tar_filename=m11_2024-10-08T17.tar

cd $GEOIPS_TESTDATA_DIR
mkdir -p $ahi_subdir
pushd $ahi_subdir
wget https://irma.cira.colostate.edu/index.php/s/R7iEXHwCxStE3Mi/download/$ahi_tar_filename
tar -xf $ahi_tar_filename
rm $ahi_tar_filename
popd

mkdir -p $m9_subdir
pushd $m9_subdir
wget https://irma.cira.colostate.edu/index.php/s/2srsFL49D3j5NRM/download/$m9_tar_filename
tar -xf $m9_tar_filename
rm $m9_tar_filename
popd

mkdir -p $m11_subdir
pushd $m11_subdir
wget https://irma.cira.colostate.edu/index.php/s/zbgkRNWpBnstQ6T/download/$m11_tar_filename
tar -xf $m11_tar_filename
rm $m11_tar_filename
popd
