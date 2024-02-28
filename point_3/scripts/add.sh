#!/bin/bash
cd ../../poky
source oe-init-build-env
bitbake-layers create-layer ../meta-mylayer
bitbake-layers add-layer ../meta-mylayer
cd ../meta-mylayer/recipes-example/
mkdir yadro-hello
cd yadro-hello
mkdir files
cd ../../../../point_3/
cp files/source/yadro-hello.c ../poky/meta-mylayer/recipes-example/yadro-hello/files/
cp files/yadro-hello.bb ../poky/meta-mylayer/recipes-example/yadro-hello/
cp files/conf/layer.conf ../poky/meta-mylayer/conf/
cp files/conf/local.conf ../poky/build/conf
cd ../poky/build/
bitbake core-image-minimal
