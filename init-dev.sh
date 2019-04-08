#!/bin/bash

wget https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz $HOME/
tar xvzf $HOME/go1.12.1.linux-amd64.tar.gz -C /usr/local
rm -f $HOME/go1.12.1.linux-amd64.tar.gz
echo "" >> ~/.zshrc
echo "export GOROOT=/usr/local/go" >> ~/.zshrc
echo "export GOPATH=~/projects/go" >> ~/.zshrc
echo "export PATH=$GOROOT:$GOPATH/bin:$PATH" >> ~/.zshrc
