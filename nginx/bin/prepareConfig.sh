#!/bin/bash
i_scriptDir=$(cd "$(dirname "$0")"; pwd)
i_baseDir=$(cd $i_scriptDir/..; pwd)

source $i_baseDir/../bin/parameter.sh

cd $i_baseDir


cp conf/nginx.conf.tmpl conf/nginx.conf

if [[ "X$i_workers" == "X" ]]; then
    i_workers=1
fi

#cat conf/nginx.conf.tmpl
sed -i  -e "s/xxportxx/$i_portnum/g" conf/nginx.conf

i_staticdir="${i_staticdir//\//\\/}"

sed -i  -e "s/xxrootxx/$i_staticdir/g" conf/nginx.conf 


sed -i  -e "s/xxworkersxx/$i_workers/g" conf/nginx.conf

i_logdir="${i_logdir//\//\\/}"

sed -i  -e "s/xxlogdirxx/$i_logdir/g" conf/nginx.conf




