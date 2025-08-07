#!/bin/sh

command -v pip3 > /dev/null 2>&1 && {
  echo "pip3 found !";
} || {
  command -v pip > /dev/null 2>&1 && {
    echo "pip found !";
  } || {
    echo "Please install the pip, version 3 is prefered !";
    exit 1;
  }
}

echo "Installing the nodejs and yarn ..."
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
