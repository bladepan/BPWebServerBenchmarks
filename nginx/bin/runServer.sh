#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

#for my mac
i_exe=$(which nginx)
if [[ "X$i_exe" == "X"  && -e '/usr/local/nginx/sbin/nginx' ]]; then
    i_exe='/usr/local/nginx/sbin/nginx'
fi
echo $i_exe
$i_exe -c $i_baseDir/conf/nginx.conf