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
wget -O ~/.ssh/config https://diljot.dev/afterlife/data/short_ssh_config.txt

# Clone the repo to ~/.afterlife
git clone git@github.com:DiljotSG/afterlife.git .afterlife
```

#### Other: Generating SSH Keys (Standard Method)

[Generating SSH Keys in a more standard way](https://docs.gitlab.com/ee/ssh/README.html#generating-a-new-ssh-key-pair).

You can repeat these instructions for other hosts you might want keys for (other than GitHub).

### Configuration Setup

Run the following configuration setup script, this will link the dotfiles on your system back to the ones in this git repo among other stuff.

```shell
cd ~/.afterlife/scripts
./setup.sh
```

## Application Setup

You can install most of your needed applications from the App Store or by using Brew.

**Note**: This is not a list of all the application you ever need/use, just the basics, it includes most of them. Some applications have been excluded from this list, if you ever need those ones, visit the App Store and manually install them (see your purchases for other apps you haven't installed).

### App Store Application List (includes Safari Extensions): 🍎

- [1Blocker (Safari)](https://apps.apple.com/ca/app/1blocker-for-safari/id1107421413?mt=12)
- [Affinity Photo](https://apps.apple.com/ca/app/affinity-photo/id824183456?mt=12)
- [Amphetamine](https://apps.apple.com/ca/app/amphetamine/id937984704?mt=12)
- [Browser Fairy](https://apps.apple.com/ca/app/browser-fairy/id483014855?mt=12)
- [DuckDuckGo (Safari)](https://apps.apple.com/ca/app/duckduckgo-privacy-essentials/id1482920575?mt=12)
- [GoodNotes](https://apps.apple.com/ca/app/goodnotes-5-notes-pdf/id1480793815?mt=12)
- [Keynote](https://apps.apple.com/ca/app/keynote/id409183694?mt=12)
- [Messenger](https://apps.apple.com/ca/app/messenger/id1480068668?mt=12)
- [Microsoft Office](https://apps.apple.com/ca/app-bundle/microsoft-office-365/id1450038993?mt=12)
  - Get only what you need 😉.
- [Numbers](https://apps.apple.com/ca/app/numbers/id409203825?mt=12)
- [Pages](https://apps.apple.com/ca/app/pages/id409201541?mt=12)
- [Slack](https://apps.apple.com/ca/app/slack/id803453959?mt=12)
- [Step Two](https://apps.apple.com/ca/app/step-two/id1448916662?mt=12)
- [Telegram](https://apps.apple.com/ca/app/telegram/id747648890?mt=12)
- [Todoist](https://apps.apple.com/ca/app/todoist-to-do-list-tasks/id585829637?mt=12)
- [Twitter](https://apps.apple.com/ca/app/twitter/id1482454543?mt=12)
- [WhatsApp](https://apps.apple.com/ca/app/whatsapp-desktop/id1147396723?mt=12)
- [Wipr (Safari)](https://apps.apple.com/ca/app/wipr/id1320666476?mt=12)
- [Xcode](https://apps.apple.com/ca/app/xcode/id497799835?mt=12)

You can install the remainder of your applications with Brew and Brew Cask. There are some scripts in the `scripts` folder in this repo for installing your brews and casks automatically.

You should review the list of brews and casks in the `docs` folder respectively before running these commands.

### Installing Brews 🍺

[Brew List](../data/brew_list.txt).

```shell
cd ~/.afterlife/scripts
./install_brews.sh
```

### Installing Casks 🍻

[Cask List](../data/cask_list.txt).

```shell
cd ~/.afterlife/scripts
./install_casks.sh
```

### Microsoft Edge Setup ⚖️

Install the following extensions (at your discretion, you might not want all of them 😄). This list is mostly here since Microsoft hasn't built in extension sync yet (oof).

- [Microsoft Editor (Optional)](https://microsoftedge.microsoft.com/addons/detail/hokifickgkhplphjiodbggjmoafhignh)
- [1Password Desktop](https://chrome.google.com/webstore/detail/1password-extension-deskt/aomjjhallfgjeglblehebfpbcfeobpgk)
- [Browser Fairy](https://chrome.google.com/webstore/detail/browser-fairy/ihfblkkmkmcgejfkgmkiipplonimjnec)
- [DuckDuckGo](https://chrome.google.com/webstore/detail/duckduckgo-privacy-essent/bkdgflcldnnnapblkhphbgpggdiikppg)
- [HTTPS Everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)
- [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)

## Reset Launchpad ↪️

Now that you've installed everything you need (you'll still need to setup most individual apps, but that's not hard and just a matter of doing it when you open the app for the first time).

Resetting your launchpad layout is a good idea so that everything you've installed is back to a nice alphabetized list 😅.

```shell
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```
