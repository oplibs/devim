#!/bin/bash

#install autojump
export SHELL="zsh"   # added to .zshrc
git clone git://github.com/wting/autojump.git ~/autojump
cd ~/autojump
./install.py #./uninstall.py
# cat '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.zshrc
# cat 'autoload -U compinit && compinit -u' >> ~/.zshrc

# cat '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.bashrc
# cat 'autoload -U compinit && compinit -u' >> ~/.bashrc
