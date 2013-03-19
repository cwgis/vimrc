#!/bin/sh
CURRENT_DIR=`pwd`
[[ ! -e '~/.vimundodir']] || mkdir ~/.vimundodir
rm -rf ~/.vimundodir/*

#backup the .vimrc and .vim
mv ~/.vim ~/.vimundodir/.vim
mv ~/.vimrc ~/.vimundodir

#checkout plugins
git submodule init
git submodule update

#copy the current vimrc to `~/` directory
cd ~/
cp -r "$CURRENT_DIR/vimrc" ~/.vimrc

# make .vim directory under `~/` directory and copy current file to ~/.vim
cp -r "$CURRENT_DIR" ~/.vim/

rm -rf "$CURRENT_DIR"
exit
