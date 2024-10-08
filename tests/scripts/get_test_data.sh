#!/bin/bash
ahi_subdir=pvis_test_data/ahi/20241001/2200/
ahi_tar_filename=ahi_2024-10-01T22.tar

m9_subdir=pvis_test_data/m9/20241008/1400/
m9_tar_filename=m9_20241008T14.tar

m11_subdir=pvis_test_data/m11/20241008/1700/
m11_tar_filename=m11_2024-10-08T17.tar

g18_subdir=pvis_test_data/g18/20241008/1600/
g18_tar_filename=g18_2024-10-08T16.tar

cd $GEOIPS_TESTDATA_DIR
mkdir -p $ahi_subdir
pushd $ahi_subdir
wget https://irma.cira.colostate.edu/index.php/s/R7iEXHwCxStE3Mi/download/$ahi_tar_filename
tar -xf $ahi_tar_filename
rm $ahi_tar_filename
popd

mkdir -p $m9_subdir
pushd $m9_subdir
wget https://irma.cira.colostate.edu/index.php/s/59rfMePTYq4fP9e/download/$m9_tar_filename
tar -xf $m9_tar_filename
rm $m9_tar_filename
popd

mkdir -p $m11_subdir
pushd $m11_subdir
wget https://irma.cira.colostate.edu/index.php/s/zbgkRNWpBnstQ6T/download/$m11_tar_filename
tar -xf $m11_tar_filename
rm $m11_tar_filename
popd

mkdir -p $g18_subdir
pushd $g18_subdir
wget https://irma.cira.colostate.edu/index.php/s/4r5CQ7ZJ7KfwP5C/download/$g18_tar_filename
tar -xf $g18_tar_filename
rm $g18_tar_filename
popd