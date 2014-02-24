#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

source $i_baseDir/../bin/parameter.sh

cd $i_baseDir


node src/cluster.js $i_portnum $i_staticdir