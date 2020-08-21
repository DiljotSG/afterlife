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
npm install -g spaceship-prompt
```

#### Font Setup

To get all the functionality of the Spaceship prompt, you need to install the FiraCode font. Follow the instructions [here](https://github.com/tonsky/FiraCode/wiki/Installing).

```shell
brew tap homebrew/cask-fonts
brew cask install font-fira-code
```

You'll now have to set this as the default font in `terminal.app` and `iTerm.app` (when you install that).

### Setting up SSH Keys 🔑

#### 1Password Setup 🔐

1. Install 1Password from the [App Store](https://apps.apple.com/ca/app/1password-7-password-manager/id1333542190?mt=12).

2. Find your [Setup Code](https://support.1password.com/secret-key/#ios) from the iOS client to make logging in easier on the Mac (You might not need to do this as iCloud tends to remember your setup code).

#### Setting up SeKey

Follow the instructions from the SeKey [readme](https://github.com/sekey/sekey).

##### Installation of SeKey

```shell
brew cask install sekey
```

#### Generating SSH Keys with SeKey

Generate an SSH key using SeKey, this one will be used to interface with GitHub.

```shell
sekey --generate-keypair "GitHub Key"
```

List the keys stored in the secure enclave.

```shell
sekey --list-keys
```

Export the GitHub Public Key to a file.

```shell
mkdir ~/.ssh
cd ~/.ssh
sekey --export-key [Key ID (must be copied when you list keys)] > ~/.ssh/id_github.pub
```

**Now copy the contents of the Public Key and add it to your SSH keys in the GitHub Settings. Be sure to delete any unused SSH keys at this point.**

#### Clone the `afterlife` repo and continue with setup using the new SSH key

```shell
cd ~

# Use a temporary SSH config for cloning the afterlife repo
brew install wget
wget -O ~/.ssh/config https://gh.diljot.dev/afterlife/data/short_ssh_config.txt

# Clone the repo to ~/.afterlife
git clone git@github.com:DiljotSG/afterlife.git .afterlife
```

#### Other: Generating SSH Keys (Standard Method)

[Generating SSH Keys in a more standard way](https://docs.gitlab.com/ee/ssh/README.html#generating-a-new-ssh-key-pair).

You can repeat these instructions for other hosts you might want keys for (other than GitHub).

### Configuration Setup and Application install

Run the following configuration setup script, this will link the dotfiles on your system back to the ones in this git repo along with creating your folder structure. This will also install all of your applications automatically through brew/cask/mas. Finally, the launchpad layout will be reset so that everything is in alphabetical order.

You should review the list of brews and casks in the `data` folder respectively before running these commands.

```shell
cd ~/.afterlife
./setup.sh
```
