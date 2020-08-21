#!/bin/sh

echo "Starting configuration..."
# Directory setup
echo "Creating directories..."
mkdir ~/Developer
mkdir ~/Developer/Git
echo "[DIRECTORIES] Done!"

# Remove existing config files (if they exist)
echo "Removing existing config files..."
rm ~/.zshrc
rm ~/.ssh/config
rm ~/.gitconfig
echo "[CLEAN UP] Done!"

# Link config files
echo "Linking configuration files..."
ln -s ~/.afterlife/dotfiles/.zshrc ~/.zshrc
ln -s ~/.afterlife/dotfiles/.ssh_config ~/.ssh/config
ln -s ~/.afterlife/dotfiles/.gitconfig ~/.gitconfig
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
  brew cask install "$p"
done <./data/cask_list.txt
echo "[CASK] Done!"

echo "Installing mac app store apps..."
brew tap homebrew/cask-drivers
while read p; do
  mas install "$p"
done <./data/mas_list.txt
echo "[MAS] Done!"
echo "Application install done!"

echo "Resetting launchpad..."
reset-lp

echo "Finished!"
