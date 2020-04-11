#!/bin/sh

brew tap homebrew/cask-drivers

while read p; do
  brew cask install "$p"
done <../data/cask_list.txt
