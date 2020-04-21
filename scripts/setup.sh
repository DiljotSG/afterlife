#!/bin/sh

# Directory setup
mkdir ~/Developer
mkdir ~/Developer/Git

# Remove existing files (if they exist)
rm ~/.zshrc
rm ~/.ssh/config
rm ~/.gitconfig

# Link config files
ln -s ~/.afterlife/dotfiles/.zshrc ~/.zshrc
ln -s ~/.afterlife/dotfiles/.ssh_config ~/.ssh/config
ln -s ~/.afterlife/dotfiles/.gitconfig ~/.gitconfig
