#!/bin/bash
i_exe=nginx
if [[ -e '/usr/local/nginx/sbin/nginx' ]]; then
    i_exe='/usr/local/nginx/sbin/nginx'
fi

$i_exe -s stop