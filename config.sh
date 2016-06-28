#!/bin/bash
rm -r /home/faker/.vim
rm -r /home/faker/.vimrc
rm -r /home/faker/.Xdefaults
rm -r /home/faker/.xinitrc
rm -r /home/faker/.xprofile
rm -r /home/faker/.xserverrc
rm -r /home/faker/.tmux.conf
rm -r /home/faker/.config/openbox
rm -r /home/faker/.config/awesome
ln -s $PWD/awesome /home/faker/.config/awesome
ln -s $PWD/vim/.vim /home/faker/.vim
ln -s $PWD/vim/.vimrc /home/faker/.vimrc
ln -s $PWD/urxvt/.Xdefaults /home/faker/.Xdefaults
ln -s $PWD/xinit/.xinitrc /home/faker/.xinitrc
ln -s $PWD/xinit/.xprofile /home/faker/.xprofile
ln -s $PWD/xinit/.xserverrc /home/faker/.xserverrc
ln -s $PWD/openbox /home/faker/.config/openbox
ln -s $PWD/tmux/.tmux.conf
