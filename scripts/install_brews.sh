#!/bin/sh

while read p; do
  brew install "$p"
done <../data/brew_list.txt
