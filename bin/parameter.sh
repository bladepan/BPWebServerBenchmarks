#!/bin/bash
#the caller script's dir
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
#the root dir of this project
i_rootDir=$(cd $i_scriptDir/../..; pwd)



i_portnum=8964
i_staticdir="$i_rootDir/staticfiles"
if [[ "X$1" != "X" ]]; then
    i_portnum=$1
fi

if [[ "X$2" != "X" ]]; then
    i_staticdir=$2
fi

echo "setting port $i_portnum, static file in $i_staticdir"