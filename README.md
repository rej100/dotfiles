# Setup Guide

## Install Linux Mint
Make sure NOT to enable autologin.

After installation, run: `sudo apt update && sudo apt upgrade -y`

## Install JetBrains Mono Nerdfont
Download https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip into `~/Downloads`

Then:
```
cd ~/Downloads
mkdir -p ~/.local/share/fonts/
unzip JetBrainsMono*.zip -d ~/.local/share/fonts/
fc-cache -fv
fc-list | grep "JetBrains"
```

## Install vscode
https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux

## Install vim, stow, feh, zsh, alacritty, picom, dunst, rofi, polybar, i3, imagemagick, keepassxc, git
Run:
```
sudo apt install vim stow feh alacritty zsh picom dunst rofi polybar i3 imagemagick keepassxc git
```

## Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Starship
Run:
```
curl -sS https://starship.rs/install.sh | sh
```

## Install betterlockscreen
```
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | bash -s user
```

## Manual Configuration
### Make zsh the default shell
```
chsh -s $(which zsh)
```

### Put a wallpaper in the proper directory
```
~/config/Pictures/wallpaper.jpg
```

### Configure git
```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```
And:
```
git config --global credential.helper store
```

## Stow The Dotfiles
Do the following in the home directory `~`:

```
git clone https://github.com/rej100/dotfiles.git
cd dotfiles
stow . --adopt
git restore .
```