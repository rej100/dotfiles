# Setup Guide

## Install Linux Mint
Make sure NOT to enable autologin.

After installation, run: `sudo apt update && sudo apt upgrade -y`

## Install i3
```sudo apt install i3```

### Config
File path: ```~/.config/i3/config```

#### Replace terminal
```
# From:
bindsym $mod+Return exec i3-sensible-terminal

# To:
bindsym $mod+Return exec alacritty
```

#### Remap Capslock to Escape
```
exec --no-startup-id setxkbmap -option caps:escape
```

## Install vim
```sudo apt install vim```

## Install git
```sudo apt install git```

## Install zsh
Install zsh:
```sudo apt install zsh -y```
Make zsh the default shell:
```chsh -s $(which zsh)```
Install Oh My Zsh:
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```

### Config
File path: ```~/.zshrc```

## Install Alacritty
Install Alacritty as per https://github.com/alacritty/alacritty/blob/master/INSTALL.md

Create config file:
```
mkdir ~/.config/alacritty
cd ~/.config/alacritty
touch alacritty.toml
```