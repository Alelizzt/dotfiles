#!/usr/bin/bash
mkdir -p ~/.config/nvim
mkdir -p ~/.vim/plugged
cp init.vim ~/.vim/plugged/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
