#!/bin/bash

TMP_DIR=/tmp/dotfiles

rm -rf $TMP_DIR

git clone https://github.com/odevsa/dotfiles.git $TMP_DIR

find $TMP_DIR -type f -exec sed -i "s/{{user}}/$USER/g" '{}' \;

cp -R "$TMP_DIR/." "$HOME"

rm -rf ~/.git ~/install.sh ~/README.md