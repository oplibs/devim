#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# PROMPT='${ret_status} %{$fg[green]%}%n@$fg[red]%}%m:%{$fg[cyan]%}%d/>%{$reset_color%} $(git_prompt_info)' >> .oh-my-zsh/themes/robbyrussell.zsh-theme

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

export SHELL="zsh"   # added to .zshrc
git clone git://github.com/wting/autojump.git ~/autojump
cd ~/autojump
./install.py #./uninstall.py
rm -rf ~/autojump

echo "plugins=(autojump web-search extract docker zsh_autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
