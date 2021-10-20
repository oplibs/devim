#!/bin/bash
##############################################################
# File Name: init-ccls.sh
# Author:
# mail:
# Created Time: Wed Oct 20 17:49:47 2021
##############################################################
git clone --recursive https://github.com/MaskRay/ccls ~/ccls
cd ~/ccls
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/path/to/clang+llvm-xxx
cmake --build Release
cd -
cd ~/ccls/Release
make install
cd -
