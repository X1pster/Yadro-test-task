#!/bin/bash
docker run -it --privileged -v $(pwd):/workdir --name yocto-con yocto-image
