#!/bin/bash
i_exe=nginx
i_exe=$(which nginx)
if [[ "X$i_exe" == "X"  && -e '/usr/local/nginx/sbin/nginx' ]]; then
    i_exe='/usr/local/nginx/sbin/nginx'
fi
echo $i_exe

$i_exe -s stop