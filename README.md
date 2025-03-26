# Setup Guide

## Install Linux Mint
Make sure NOT to enable autologin.

After installation, run: `sudo apt update && sudo apt upgrade -y`

## Install KeePassXC
Run:
```
sudo apt install keepassxc
```

## Install git
```sudo apt install git```
Then:
```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```
And:
```
git config --global credential.helper cache
```

## Install vscode
https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux

## Install Alacritty
Install Alacritty as per https://github.com/alacritty/alacritty/blob/master/INSTALL.md

Create config file:
```
mkdir ~/.config/alacritty
cd ~/.config/alacritty
touch alacritty.toml
```
## Install vim, stow, feh, zsh, picom, dunst, rofi, polybar, i3
Run:
```
sudo apt install vim stow feh zsh picom dunst rofi polybar i3
```
## Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Manual Configuration
Make zsh the default shell:
```
chsh -s $(which zsh)
```

Put a wallpaper in:
```
~/config/Pictures/wallpaper.jpg
```

## Stow The Dotfiles
Do the following in the home directory `~`:

```
git clone https://github.com/rej100/dotfiles.git
cd dotfiles
stow . --adopt
git restore .
```