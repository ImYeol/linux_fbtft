#!/bin/bash


sdLibPath='/media/gyl115/rootfs/lib'
libPath='/home/gyl115/odroidw/linux-odroidw-3.12.y/modules/lib'
sdBootPath='/media/gyl115/boot'
bootPath='/home/gyl115/odroidw/linux-odroidw-3.12.y/arch/arm/boot'

if [ -f ${sdBootPath}/kernel_.img ];then
	 rm ${sdBootPath}/kernel_.img
	 echo "rm kernel_.img"
else
	echo "kernel_.img not exist"
fi

cp ${bootPath}/zImage ${sdBootPath}/kernel_.img

echo "cp boot is done"


if [ -d $sdLibPath/firmware ];then
	rm -r $sdLibPath/firmware
	echo "rm "$sdLibPath"/firmware"
else
	echo "firmware not exist"
fi

if [ -d $sdLibPath/modules ];then
	rm -r $sdLibPath/modules
	echo "rm "$sdLibPath"/modules"
else
	echo "modules not exist"
fi

cp -r ${libPath}/* ${sdLibPath}

echo "cp lib is done"

sync
