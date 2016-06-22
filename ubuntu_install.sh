#!/bin/bash
rm -r /home/enbin/.vim
rm -r /home/enbin/.vimrc
ln -s $PWD/vim/.vim /home/enbin/.vim
ln -s $PWD/vim/.vimrc /home/enbin/.vimrc
