#!/bin/bash
cd /home/yocto/poky/
source oe-init-build-env
bitbake-layers create-layer ../meta-mylayer
bitbake-layers add-layer ../meta-mylayer
cd ../meta-mylayer/recipes-example/
mkdir yadro-hello
cd yadro-hello
mkdir files
cp /home/yocto/files/source/yadro-hello.c /home/yocto/poky/meta-mylayer/recipes-example/yadro-hello/files/
cp /home/yocto/files/yadro-hello.bb /home/yocto/poky/meta-mylayer/recipes-example/yadro-hello/
cp /home/yocto/files/conf/layer.conf /home/yocto/poky/meta-mylayer/conf/
cp /home/yocto/files/conf/local.conf /home/yocto/poky/build/conf
cd /home/yocto/poky/build/
bitbake core-image-minimal
