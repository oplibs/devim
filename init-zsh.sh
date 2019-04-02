#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# PROMPT='${ret_status} %{$fg[green]%}%n@$fg[red]%}%m:%{$fg[cyan]%}%d/>%{$reset_color%} $(git_prompt_info)' >> .oh-my-zsh/themes/robbyrussell.zsh-theme

#install autojump
export SHELL="zsh"   # added to .zshrc
git clone git://github.com/wting/autojump.git ~/
cd ~/autojump
./install.py #./uninstall.py
cat '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.zshrc
cat 'autoload -U compinit && compinit -u' >> ~/.zshrc

cat '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' >> ~/.bashrc
cat 'autoload -U compinit && compinit -u' >> ~/.bashrc
