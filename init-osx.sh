#!/bin/sh

echo "Initing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Initing for xkbswitch plugin"
git clone https://github.com/myshov/xkbswitch-macosx.git ~/.vim/xkbswitch-macosx
cp ~/.vim/xkbswitch-macosx/bin/xkbswitch /usr/local/bin
git clone https://github.com/myshov/libxkbswitch-macosx.git  ~/.vim/libxkbswitch-macosx
cp ~/.vim/libxkbswitch-macosx/bin/libxkbswitch.dylib /usr/local/lib/

echo "Initing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

brew install astyle
# "wget https://jaist.dl.sourceforge.net/project/astyle/astyle/astyle%203.1/astyle_3.1_linux.tar.gz
# "tar xzvf astyle_3.1_linux.tar.gz
# "cd astyle_3.1_linux/build/gcc
# "make
# "sudo make install
