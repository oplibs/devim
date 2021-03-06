#!/bin/sh

## for brew upgrade
# brew install python@3.8
# pip3 install pynvim

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
brew install clang-format
brew install ctags
brew install the_silver_searcher
