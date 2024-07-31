#!/bin/bash

if [ ${#KERNEL_PATCHES[@]} -ne 0 ]; then
        for patchfile in "${KERNEL_PATCHES[@]}"; do
                if [ -f ../../kernel/patches/$patchfile ]; then
	                patch -p1 < ../../kernel/patches/$patchfile
		fi
        done
fi
