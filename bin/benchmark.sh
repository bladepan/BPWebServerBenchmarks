#!/bin/bash
i_exe=ab
i_concurrency=100
i_testcount=20000
i_url=http://localhost:8964/101k.html

if [[ -e '/usr/local/apache2/bin/ab' ]]; then
    i_exe='/usr/local/apache2/bin/ab'
fi

if [[ "X$1" != "X" ]]; then
    i_concurrency=$1
fi


if [[ "X$2" != "X" ]]; then
    i_testcount=$2
fi


if [[ "X$3" != "X" ]]; then
    i_url=$3
    if [[ "X$i_host" != "X" ]]; then
        i_url=$i_host/$3
    fi
fi

i_copt="-c $i_concurrency"

if [ "$i_testcount" -le "$i_concurrency" ]; then
    i_copt=""
fi

$i_exe $i_copt  -n $i_testcount $i_url