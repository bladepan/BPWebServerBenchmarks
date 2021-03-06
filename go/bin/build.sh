#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)
cd $i_baseDir
export GOPATH=$i_baseDir
cd $GOPATH

# Pass the '-s' flag to the linker to omit the debug information (for example, go build -ldflags "-s" prog.go).
i_exename="gowebserver"
go build -o $i_baseDir/bin/$i_exename -ldflags "-s" webserver
chmod +x $GOPATH/bin/$i_exename