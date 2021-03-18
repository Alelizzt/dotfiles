#!/usr/bin/bash

cp -r .tmux ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
cp ~/.tmux/.tmux.conf.local ~/.tmux.conf.local
