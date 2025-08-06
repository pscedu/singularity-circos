#!/bin/bash

set -x
shopt -s expand_aliases
alias circos='singularity exec singularity-circos-0.69-9.sif circos'

# Run circos and check status
if circos --help; then
    exit 1
else
    exit 0
fi
