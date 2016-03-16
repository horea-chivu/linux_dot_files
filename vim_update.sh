#!/bin/bash
sudo rm -r ~/.vim/colors
cd Vim
cp -Ri colors ~/.vim
cp -i .vimrc ~/.vim
cd ..
vim +PluginInstall! +qall
