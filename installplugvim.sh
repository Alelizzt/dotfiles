#!/usr/bin/bash
# Utilizar solo con neovim!
mkdir -p ~/.config/nvim
mkdir -p ~/.vim/plugged
cp init.vim ~/.vim/plugged/
cp init.vim ~/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
