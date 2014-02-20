#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)
cd i_baseDir
# Pass the '-s' flag to the linker to omit the debug information (for example, go build -ldflags "-s" prog.go).
go run -ldflags "-s" src/webserver.go $1 $2 