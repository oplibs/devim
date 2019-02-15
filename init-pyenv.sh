#!/bin/bash

venv="~/venv"
pip install --upgrade virtualenv

mkdir -p $venv/py2
virtualenv --system-site-packages $venv/py2
echo "alias py2=\"cd $venv/py2 && source bin/activate\"" >> ~/.bashrc

mkdir -p $venv/py3
virtualenv --system-site-packages -p python3 $venv/py3
echo "alias py3=\"cd $venv/py3 && source bin/activate\"" >> ~/.bashrc
