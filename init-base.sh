#!/bin/sh

# echo "Initing vim-plug..."
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -sL install-node.now.sh/lts -o lts.sh
/bin/bash ./lts.sh --yes
# Optional install yarn if you want install extension by CocInstall command
curl --compressed -o- -L https://yarnpkg.com/install.sh -o install.sh
/bin/bash install.sh --yes
npm install -g yarn

echo "Initing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

if command -v pip >/dev/null 2>&1; then
    pip install pynvim
else
    echo 'no exists pip'
fi
if command -v pip3 >/dev/null 2>&1; then
    pip3 install pynvim
else
    echo 'no exists pip3'
fi
# "wget https://jaist.dl.sourceforge.net/project/astyle/astyle/astyle%203.1/astyle_3.1_linux.tar.gz
# "tar xzvf astyle_3.1_linux.tar.gz
# "cd astyle_3.1_linux/build/gcc
# "make
# "sudo make install
