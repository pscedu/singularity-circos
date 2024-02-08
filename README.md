![Status](https://github.com/pscedu/singularity-circos/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-circos/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-circos)
![forks](https://img.shields.io/github/forks/pscedu/singularity-circos)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-circos)
![License](https://img.shields.io/github/license/pscedu/singularity-circos)

# singularity-circos
Singularity recipe for [circos](http://circos.ca/).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `circos` script

to `/opt/packages/circos/0.69-9`.

Copy the file `modulefile.lua` to `/opt/modulefiles/circos` as `0.69-9.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

## Copy the data to `/ocean`

```
wget http://circos.ca/distribution/circos-current.tgz
mkdir -p /ocean/datasets/community/genomics/circos
tar -xvf circos-current.tgz && rm -f circos-current.tgzmv -v circos-0.69-9/data /ocean/datasets/community/genomics/circos/
rm -rfv circos-0.69-9
```

---
Copyright © 2020-2024 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
