#!/bin/bash
rm -r /home/enbin/.vim
rm -r /home/enbin/.vimrc
rm -r /home/enbin/.Xdefaults
rm -r /home/enbin/.xinitrc
rm -r /home/enbin/.xprofile
rm -r /home/enbin/.xserverrc
rm -r /home/enbin/.tmux.conf
rm -r /home/enbin/.config/openbox
rm -r /home/enbin/.config/awesome
ln -s $PWD/awesome /home/enbin/.config/awesome
ln -s $PWD/vim/.vim /home/enbin/.vim
ln -s $PWD/vim/.vimrc /home/enbin/.vimrc
ln -s $PWD/urxvt/.Xdefaults /home/enbin/.Xdefaults
ln -s $PWD/xinit/.xinitrc /home/enbin/.xinitrc
ln -s $PWD/xinit/.xprofile /home/enbin/.xprofile
ln -s $PWD/xinit/.xserverrc /home/enbin/.xserverrc
ln -s $PWD/openbox /home/enbin/.config/openbox
ln -s $PWD/tmux/.tmux.conf
