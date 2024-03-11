#!/bin/bash
cd /home/yocto/poky/
source oe-init-build-env
cd tmp/deploy/images/
runqemu qemux86-64/ slirp nographic
