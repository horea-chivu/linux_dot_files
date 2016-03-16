#!/bin/bash

cd Emacs
rm -R .emacs.d
mkdir .emacs.d
rm .emacs

#Current files copy
cp ~/.emacs.d/my-loadpackages.el .emacs.d/
cp ~/.emacs.d/my-packages.el .emacs.d/
cp ~/.emacs.d/my-noexternals.el .emacs.d/
cp -R ~/.emacs.d/snippets .emacs.d/
cp ~/.emacs .

cd ..
