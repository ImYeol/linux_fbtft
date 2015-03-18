#!/bin/bash

export CCPREFIX=~/odroidw/tools-master/arm-bcm2708/arm-bcm2708hardfp-linux-gnueabi/bin/arm-bcm2708hardfp-linux-gnueabi-
export CROSS_COMPILE=${CCPREFIX}
export ARCH=arm
export MODULES_TEMP=~/odroidw/linux-odroidw-3.12.y/modules
export INSTALL_MOD_PATH=${MODULES_TEMP}

echo "setting is done"
