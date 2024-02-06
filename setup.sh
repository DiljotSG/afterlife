#!/bin/sh

brew install mas
if [[ $1 == *--mas-prev* || $2 == *--mas-prev* ]]
then
  echo "Previewing mac app store apps..."
  while read p; do
    output1=`echo "$p"`
    output2=`mas info "$p" | head -n 1`
    echo "$output1 $output2"
  done <./data/$mode/mas_list.txt
  echo "[Preview] Done!"
  exit
fi

echo "Starting configuration..."
echo "Creating directories..."
mkdir ~/Developer
mkdir ~/Developer/Git
echo "[DIRECTORIES] Done!"

echo "Removing existing config files..."
rm ~/.zshrc
echo "[CLEAN UP] Done!"

echo "Linking configuration files..."
ln -s ~/.afterlife/dotfiles/zshrc ~/.zshrc
echo "[CONFIG] Done!"
echo "Configuration done!"

echo "Starting application install..."
echo "Installing brews..."
while read p; do
  brew install "$p"
done <./data/brew_list.txt
echo "[BREW] Done!"

echo "Installing casks..."
brew tap homebrew/cask-drivers
while read p; do
  brew install "$p" --cask
done <./data/cask_list.txt
echo "[CASK] Done!"

echo "Installing mac app store apps..."
while read p; do
  mas install "$p"
done <./data/mas_list.txt
echo "[MAS] Done!"
echo "Application install done!"

echo "Resetting launchpad..."
source ~/.zshrc
reset-lp

echo "Finished!"
