]#!/bin/bash

set -x

shopt -s expand_aliases

if [ ! -d circos-tutorials-0.67 ]; then
	wget -nc wget http://circos.ca/distribution/circos-tutorials-current.tgz
	tar -xvf circos-tutorials-current.tgz && rm -fv circos-tutorials-current.tgz
fi

alias circos='singularity exec "$DIRECTORY"/singularity-circos-0.69-9.sif circos'

DIRECTORY=$(pwd)
cd circos-tutorials-0.67/tutorials/2/2
circos -conf circos.conf

EXIT_CODE=0
if [ ! -f circos.png ]; then
	EXIT_CODE=1
fi

cd ../3
circos -conf circos.conf

EXIT_CODE=0
if [ ! -f circos.png ]; then
       	EXIT_CODE=1
fi

exit $EXIT_CODE
