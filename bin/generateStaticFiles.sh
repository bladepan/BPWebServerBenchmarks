#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)
cd $i_baseDir

i_static_dir=$i_baseDir/staticfiles
mkdir -p $i_static_dir

dd if=/dev/random of=$i_static_dir/101k.html bs=1k count=101

dd if=/dev/random of=$i_static_dir/30b.json bs=1 count=30
dd if=/dev/random of=$i_static_dir/100b.json bs=1 count=100
dd if=/dev/random of=$i_static_dir/500b.json bs=1 count=500

dd if=/dev/random of=$i_static_dir/1.5k.json bs=100 count=15
dd if=/dev/random of=$i_static_dir/2.5k.json bs=100 count=25

dd if=/dev/random of=$i_static_dir/26k.json bs=1k count=26





