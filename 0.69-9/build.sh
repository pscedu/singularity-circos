#!/bin/bash

# Copyright © 2021-2023 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-circos-0.69-9.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
