#!/bin/bash

DOTFILES=${HOME}/dotfiles
DOTBU=${HOME}/dotbackup

mkdir ${DOTBU}

files=( "bashrc" "gitconfig" "gitignore" "screenrc" "tmux.conf" "vimrc" )

for f in "${files[@]}"
do
  mv ${HOME}/.$f ${DOTBU}/${f}.bak
  ln -s ${DOTFILES}/$f ${HOME}/.$f
done
