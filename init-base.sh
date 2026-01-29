#/bin/sh

echo "Initing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

command -v node > /dev/null 2>&1 && {
  echo "nodejs found !";
} || {
  echo "Installing the nodejs and yarn ..."
  # curl -sL install-node.now.sh/lts -o lts.sh
  # /bin/bash ./lts.sh --yes
  # rm -f lts.sh
  #
  export VOLTA_HOME=$HOME/.local/volta
  if [[ ! -d "$VOLTA_HOME" ]]; then
    curl https://get.volta.sh | bash
  fi
  export PATH="$VOLTA_HOME/bin:$PATH"
}

# Optional install yarn if you want install extension by CocInstall command
#curl --compressed -o- -L https://yarnpkg.com/install.sh -o install.sh
# wget https://yarnpkg.com/install.sh --no-check-certificate
#/bin/bash install.sh --yes
#rm -f install.sh

echo "export NODE_PATH=$HOME/node_modules" >> ~/.bashrc
echo "export NODE_PATH=$HOME/node_modules" >> ~/.zshrc
export NODE_PATH=/$HOME/node_modules && npm install --prefix /$HOME/node_modules -g yarn

echo "Initing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
