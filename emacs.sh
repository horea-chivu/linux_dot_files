#!/bin/bash

rm -R ~/.emacs.d
rm ~/.emacs
cp -R Emacs/.emacs.d/
cp Emacs/.emacs ~/
