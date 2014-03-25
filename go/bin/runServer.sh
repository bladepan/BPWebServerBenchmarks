#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

source $i_baseDir/../bin/parameter.sh

cd $i_baseDir

if [[ "X$i_workers" != "X" ]]; then
    echo "setting GOMAXPROCS to $i_workers"
    export GOMAXPROCS=$i_workers
fi

$i_baseDir/go/gowebserver

