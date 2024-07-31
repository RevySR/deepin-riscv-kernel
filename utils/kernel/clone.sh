#!/bin/bash

export GIT_CLONE_PROTECTION_ACTIVE=false

mkdir -p work

git clone --depth=1 -b "$KERNEL_BRANCH" "$KERNEL_GIT" work/kernel

if [ ! -z $KERNEL_SUBDIR ]; then
	mv work/kernel work/kernel-git
	mv work/kernel-git/${KERNEL_SUBDIR} work/kernel
fi
