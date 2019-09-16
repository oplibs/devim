#!/bin/bash

git clone --recursive https://github.com/cquery-project/cquery.git ~/cquery
cd ~/cquery
git submodule update --init
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_EXPORT_COMPILE_COMMANDS=YES
cmake --build .
cmake --build . --target install
