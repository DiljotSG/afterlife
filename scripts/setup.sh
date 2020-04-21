#!/bin/sh

# Directory setup
mkdir ~/Developer
mkdir ~/Developer/Git
mkdir ~/.ssh

# Link config files
ln -s ~/.afterlife/dotfiles/.zshrc ~/.zshrc
ln -s ~/.afterlife/dotfiles/.ssh_config ~/.ssh/config
ln -s ~/.afterlife/dotfiles/.gitconfig ~/.gitconfig
