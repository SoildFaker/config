#!/bin/bash

user = $(users)
curdir = $(pwd)
rm -r /home/$user/.vim
rm -r /home/$user/.vimrc
rm -r /home/$user/.Xdefaults
rm -r /home/$user/.xinitrc
rm -r /home/$user/.xprofile
rm -r /home/$user/.xserverrc
rm -r /home/$user/.tmux.conf
rm -r /home/$user/.config/openbox
rm -r /home/$user/.config/awesome
rm -r /home/$user/.config/i3/config
ln -s $PWD/awesome /home/faker/.config/awesome
ln -s $PWD/vim/.vim /home/faker/.vim
ln -s $PWD/vim/.vimrc /home/faker/.vimrc
ln -s $PWD/urxvt/.Xdefaults /home/faker/.Xdefaults
ln -s $PWD/xinit/.xinitrc /home/faker/.xinitrc
ln -s $PWD/xinit/.xprofile /home/faker/.xprofile
ln -s $PWD/xinit/.xserverrc /home/faker/.xserverrc
ln -s $PWD/openbox /home/faker/.config/openbox
ln -s $PWD/tmux/.tmux.conf
