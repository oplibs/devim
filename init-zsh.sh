#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# PROMPT='${ret_status} %{$fg[green]%}%n@$fg[red]%}%m:%{$fg[cyan]%}%d/>%{$reset_color%} $(git_prompt_info)' >> .oh-my-zsh/themes/robbyrussell.zsh-theme

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

cp zshrc ~/.zshrc
/bin/zsh