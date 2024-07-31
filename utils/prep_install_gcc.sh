#!/bin/bash

sudo apt install -y g++-${GCC_VER}-${GCC_ARCH}-linux-gnu

sudo update-alternatives --install /usr/bin/${GCC_ARCH}-linux-gnu-gcc ${GCC_ARCH}-gcc /usr/bin/${GCC_ARCH}-linux-gnu-gcc-${GCC_VER} 10
sudo update-alternatives --install /usr/bin/${GCC_ARCH}-linux-gnu-g++ ${GCC_ARCH}-g++ /usr/bin/${GCC_ARCH}-linux-gnu-g++-${GCC_VER} 10

