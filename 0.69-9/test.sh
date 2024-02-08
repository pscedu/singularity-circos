#!/bin/bash

set -x

shopt -s expand_aliases
alias circos='singularity exec singularity-circos-0.69-9.sif circos'

circos --help
