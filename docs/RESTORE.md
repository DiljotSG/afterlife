# Restoring Environment

## Terminal Setup 💻

### Setting Up Homebrew 🧪

Install Homebrew by running the command at the following [website](https://brew.sh).

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Setting up OhmyZsh ⚒️

Follow the instructions to install OhmyZsh from their [website](https://ohmyz.sh).

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Setting up the Spaceship Prompt for OhmyZsh 👾

Follow the instructions from the spaceship prompt [readme](https://github.com/denysdovhan/spaceship-prompt).

```shell
brew install node
brew install spaceship
```

#### Font Setup

To get all the functionality of the Spaceship prompt, you need to install the FiraCode font. Follow the instructions [here](https://github.com/tonsky/FiraCode/wiki/Installing).

```shell
brew tap homebrew/cask-fonts
brew install font-fira-code --cask
```

You'll now have to set this as the default font in `terminal.app` and `iTerm.app` (when you install that).

### Setting up SSH Keys 🔑

#### 1Password Setup 🔐

1. Install 1Password using Homebrew.

```shell
brew install 1Password --cask
```

2. Find your [Setup Code](https://support.1password.com/secret-key/#ios) from the iOS client to make logging in easier on the Mac (You might not need to do this as iCloud tends to remember your setup code).

3. Setup the 1Password SSH Agent, as [described here](https://developer.1password.com/docs/ssh/get-started#step-3-turn-on-the-1password-ssh-agent).

#### Clone the `afterlife` repo and continue with setup using the new SSH key

```shell
cd ~

# Clone the repo to ~/.afterlife
git clone git@github.com:DiljotSG/afterlife.git .afterlife
```

### Configuration Setup and Application install

Run the following configuration setup script, this will link the dotfiles on your system back to the ones in this git repo along with creating your folder structure. This will also install all of your applications automatically through brew/cask/mas. Finally, the launchpad layout will be reset so that everything is in alphabetical order.

You should review the list of brews and casks in the `data` folder respectively before running these commands.

```shell
cd ~/.afterlife
./setup.sh
```
