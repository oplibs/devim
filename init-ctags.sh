#!/usr/bin/env sh

git clone https://github.com/universal-ctags/ctags.git ~/ctags
cd ~/ctags
./autogen.sh
./configure --prefix=/usr/local
make -j8
make install
