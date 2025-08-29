#!/bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# PROMPT='${ret_status} %{$fg[green]%}%n@$fg[red]%}%m:%{$fg[cyan]%}%d/>%{$reset_color%} $(git_prompt_info)' >> .oh-my-zsh/themes/robbyrussell.zsh-theme


# # export SHELL="zsh"   # added to .zshrc
# git clone https://github.com/wting/autojump.git ~/autojump
# cd ~/autojump
# ./install.py #./uninstall.py
# cd -
# rm -rf ~/autojump

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/plugins/zsh-history-substring-search

echo "plugins=(autojump extract docker zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)" >> ~/.zshrc
echo "export TERM=screen" >> ~/.zshrc
# echo "[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "[[ -s /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh" >> ~/.zshrc
echo "PROMPT='\${ret_status} %{\$fg[green]%}%n@\$fg[red]%}%m:%{\$fg[cyan]%}%d/>%{\$reset_color%} \$(git_prompt_info)'" >> ~/.oh-my-zsh/themes/robbyrussell.zsh-theme

echo "tmux source-file ~/.tmux.conf" >> ~/.zshrc
