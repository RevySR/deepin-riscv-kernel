#!/bin/bash

if [ ${#KERNEL_PATCHES[@]} -ne 0 ]; then
        for patchfile in "${KERNEL_PATCHES[@]}"; do
                if [ -f ../../kernel/patches/$patchfile ]; then
	                patch -p1 < ../../kernel/patches/$patchfile
		fi
        done
fi

if [ ${#KERNEL_PATCHES_PROPRIETARY[@]} -ne 0 ]; then
        for patchfile in "${KERNEL_PATCHES_PROPRIETARY[@]}"; do
                if [ -f ../../proprietary-repo/kernel/patches/$patchfile ]; then
                        patch -p1 < ../../proprietary-repo/kernel/patches/$patchfile
                fi
        done
fi
