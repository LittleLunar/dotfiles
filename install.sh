#!/bin/bash

if [ ! -d $HOME/.config ]
then
  mkdir $HOME/.config
fi

# setup zsh
cp -a $PWD/zsh/ $HOME/

# setup hyper
cp -a $PWD/hyper/ $HOME/

# setup oh-my-posh
cp -a $PWD/oh-my-posh/ $HOME/.config/oh-my-posh/

# setup nvim
cp -a $PWD/nvim/ $HOME/.config/nvim/
