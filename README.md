# Docker image for i-Code CNES

This project aims to provide a simple Docker image to encapsulate and run an [i-Code CNES](https://github.com/lequal/i-CodeCNES) analysis through Docker.

### Run i-Code CNES

#### Run core checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src facthunder/icode:latest -f xml -o report.xml **/* *
```

### Versions matrix
Here is the versions matrix of the image:

|                          TAG                           |                       IKOS VERSION                       |                        BASE IMAGE                      |
|:------------------------------------------------------:|:------------------------------------------------------------:|:------------------------------------------------------:|
| [latest](https://hub.docker.com/r/facthunder/i-code) | [3.1.0](https://github.com/lequal/i-CodeCNES/releases/tag/v3.1.0) | [openjdk:8u222-slim-buster](https://hub.docker.com/_/openjdk) |
|  [3.1.0](https://hub.docker.com/r/facthunder/i-code)  | [3.1.0](https://github.com/lequal/i-CodeCNES/releases/tag/v3.1.0) | [openjdk:8u222-slim-buster](https://hub.docker.com/_/openjdk) |


### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2019 Facthunder.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)
