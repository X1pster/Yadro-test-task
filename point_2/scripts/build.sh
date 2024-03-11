#!/bin/bash
cd /home/yocto/
git clone -b kirkstone git://git.yoctoproject.org/poky
cd poky
source oe-init-build-env
bitbake core-image-minimal
