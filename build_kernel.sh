#!/bin/bash

#
# Via the command 'make mrproper', all the messy stuff will be purged
# after having compiled a kernel within this directiory
#

# Calculate the toolchain directory based on relative position in build tree
pushd ../../..
CROOT=$PWD
popd

export ARCH=arm
export CROSS_COMPILE=$CROOT/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-

make exynos5433-gts210lte_defconfig
make
