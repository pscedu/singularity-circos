#!/bin/bash

set -x

shopt -s expand_aliases

if [ ! -d circos-tutorials-0.67 ]; then
	wget -nc wget http://circos.ca/distribution/circos-tutorials-current.tgz
	tar -xvf circos-tutorials-current.tgz && rm -fv circos-tutorials-current.tgz
fi

alias circos='singularity exec "$DIRECTORY"/singularity-circos-0.69-9.sif circos'

DIRECTORY=$(pwd)
cd circos-tutorials-0.67/tutorials/2

for I in 2 3 4 5 6 7 8 9 10;
do
	cd $I
	circos -conf circos.conf

	EXIT_CODE=0
	if [ ! -f circos.png ]; then
		EXIT_CODE=1
	fi
	cd ..
done

exit $EXIT_CODE
