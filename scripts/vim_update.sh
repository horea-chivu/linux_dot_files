#!/bin/bash
sudo rm -r ~/.vim/colors
cd ../
cp -Ri colors ~/.vim
cp -i .vimrc ~/.vim
cd scripts/
vim +PluginInstall! +qall
