#!/bin/sh

while read p; do
  brew cask install "$p"
done <../data/brew_cask_list.txt
