#!/bin/bash

export GIT_CLONE_PROTECTION_ACTIVE=false

mkdir -p work

KERNEL_BRANCH=${KERNEL_BRANCH:-master}

if [ ! -d work/kernel ]; then

if [ -z $KERNEL_COMMIT ]; then
	git clone --depth=1 -b "$KERNEL_BRANCH" "$KERNEL_GIT" work/kernel
else
	git clone -b "$KERNEL_BRANCH" "$KERNEL_GIT" work/kernel
	pushd work/kernel
	git checkout $KERNEL_COMMIT
	popd
fi

if [ ! -z $KERNEL_SUBDIR ]; then
	mv work/kernel work/kernel-git
	mv work/kernel-git/${KERNEL_SUBDIR} work/kernel
fi

fi
