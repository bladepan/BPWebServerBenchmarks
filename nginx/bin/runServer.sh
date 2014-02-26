#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

#for my mac
i_exe=nginx
if [[ -e '/usr/local/nginx/sbin/nginx' ]]; then
    i_exe='/usr/local/nginx/sbin/nginx'
fi

$i_exe -c $i_baseDir/conf/nginx.conf