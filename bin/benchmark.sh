#!/bin/bash
i_exe=ab
i_concurrency=100
i_testcount=20000

if [[ -e '/usr/local/apache2/bin/ab' ]]; then
    i_exe='/usr/local/apache2/bin/ab'
fi

if [[ "X$1" != "X" ]]; then
    i_testcount=$1
fi

if [[ "X$2" != "X" ]]; then
    i_concurrency=$2
fi

i_copt="-c $i_concurrency"

if [[ $((i_testcount<i_concurrency)) ]]; then
    i_copt=""
fi

$i_exe $i_copt  -n $i_testcount http://localhost:8964/101k.html