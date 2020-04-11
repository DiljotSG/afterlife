#!/bin/sh

while read p; do
  brew cask install "$p"
done <../data/cask_list.txt
