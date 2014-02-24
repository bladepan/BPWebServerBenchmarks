#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

source $i_baseDir/../bin/parameter.sh

cd $i_baseDir

# Pass the '-s' flag to the linker to omit the debug information (for example, go build -ldflags "-s" prog.go).
go run -ldflags "-s" src/webserver.go $i_portnum $i_staticdir