#!/bin/bash

cd Emacs
rm -R ~/.emacs.d
rm ~/.emacs
cp -R .emacs.d ~/
cp .emacs ~/
cd ..
