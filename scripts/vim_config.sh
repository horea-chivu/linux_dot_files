#!/bin/bash
mkdir ~/.vim ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo rm -r ~/.vim/colors
cd ../
cp -Ri colors ~/.vim
cp .vimrc ~/.vim
ln -s ~/.vim/.vimrc ~/
cd scripts/
vim +PluginInstall +qall
# On Fedora execute the following:
# sudo ln -s ~/.vim /root/
# sudo ln -s ~/.vimrc /root/
