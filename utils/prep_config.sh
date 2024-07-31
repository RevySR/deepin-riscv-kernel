#!/bin/bash

git config --global user.email $KBUILD_BUILD_EMAIL
git config --global user.name $KBUILD_BUILD_USER

# prepare ccache
mkdir -p $CCACHE_DIR

# we need to blance cache size between board
ccache -F 0 -M ${CCACHE_SIZE}

ccache -s
