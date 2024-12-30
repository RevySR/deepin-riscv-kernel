#!/bin/bash

if [ -z "${CROSS_COMPILE+xxx}" ]; then
  if [ -z $NOCCACHE ]; then
    export CROSS_COMPILE="ccache ${GCC_ARCH}-linux-gnu-"
  else
    export CROSS_COMPILE="${GCC_ARCH}-linux-gnu-"
  fi
fi

case $GCC_ARCH in
	riscv64)
		MAKE_ARCH="riscv"
		;;
	*)
		MAKE_ARCH="${GCC_ARCH}"
		;;
esac

export MAKE_EXEC="make ARCH=${MAKE_ARCH}"


