#!/bin/bash

set -x
shopt -s expand_aliases
alias circos='singularity exec singularity-circos-0.69-9.sif circos'

# Run circos and check status
if circos --help; then
    exit 0
else
    exit 1
fi
