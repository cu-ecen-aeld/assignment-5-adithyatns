#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external

set -e 
cd `dirname $0`

if [ -e buildroot/.config ]
then
	echo "running make disclean"
	echo "To force update, delete .config or make changes using make menuconfig and build again."
	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} distclean
	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} clean
fi
