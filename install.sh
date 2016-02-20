#!/usr/bin/env bash

mkdir ~/.bin

dir=`pwd`

ln -s "$dir/home/bash_profile" ~/.bash_profile
ln -s "$dir/home/emacs.d" ~/.emacs.d
ln -s "$dir/home/gitconfig" ~/.gitconfig
ln -s "$dir/home/gitignore" ~/.gitignore
