#!/bin/bash
##############################################################
# File Name: init-dive.sh
# Author:
# mail:
# Created Time: Fri Aug  9 16:24:19 2024
##############################################################
DIVE_VERSION=$(curl -s "https://api.github.com/repos/wagoodman/dive/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo dive.deb "https://github.com/wagoodman/dive/releases/latest/download/dive_${DIVE_VERSION}_linux_amd64.deb"
sudo apt install -y ./dive.deb
rm ./dive.deb
