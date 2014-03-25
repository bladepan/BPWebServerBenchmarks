#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)
cd $i_baseDir

i_static_dir=$i_baseDir/staticfiles
mkdir -p $i_static_dir

i_logdir="$i_baseDir/logs"
mkdir -p $i_logdir

cp template/* $i_static_dir

dd if=/dev/zero of=$i_static_dir/101k.html bs=1k count=101

dd if=/dev/zero of=$i_static_dir/30b.json bs=1 count=30
dd if=/dev/zero of=$i_static_dir/100b.json bs=1 count=100
dd if=/dev/zero of=$i_static_dir/500b.json bs=1 count=500
dd if=/dev/zero of=$i_static_dir/1k.json bs=100 count=10
dd if=/dev/zero of=$i_static_dir/1.5k.json bs=100 count=15
dd if=/dev/zero of=$i_static_dir/2k.json bs=100 count=20
dd if=/dev/zero of=$i_static_dir/2.5k.json bs=100 count=25
dd if=/dev/zero of=$i_static_dir/5k.json bs=100 count=50
dd if=/dev/zero of=$i_static_dir/10k.json bs=1k count=10
dd if=/dev/zero of=$i_static_dir/20k.json bs=1k count=20
dd if=/dev/zero of=$i_static_dir/50k.json bs=1k count=50
dd if=/dev/zero of=$i_static_dir/100k.json bs=1k count=100
dd if=/dev/zero of=$i_static_dir/200k.json bs=1k count=200

dd if=/dev/zero of=$i_static_dir/1m.json bs=1k count=1024
dd if=/dev/zero of=$i_static_dir/3m.json bs=1k count=$((3*1024))

dd if=/dev/zero of=$i_static_dir/26k.json bs=1k count=26


#nginx/bin/prepareConfig.sh