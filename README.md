# Setup Guide

## Install and Update Fedorea
After installation follow: https://github.com/devangshekhawat/Fedora-42-Post-Install-Guide

## Install KeePassXC
```
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

```
flatpak install --user flathub org.keepassxc.KeePassXC
```

## Install git
```
sudo apt install git
```

Then:
```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```
And:
```
git config --global credential.helper store
```

## Install vscode
https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux

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

## Install vim, stow, feh, imagemagick, zsh, alacritty, picom, dunst, rofi, polybar, i3, flameshot
Run:
```
sudo apt alacritty
```

## Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Make sure to select the option to make zsh the default shell.

## Install Starship
Run:
```
curl -sS https://starship.rs/install.sh | sh
```

## Pull The Configuration
### Stow The Dotfiles
Do the following in the home directory `~`:

```
git clone https://github.com/rej100/dotfiles.git
cd dotfiles
stow . --adopt
git restore .
```

### Make scripts executable
```
find . -type f -name "*.sh" -exec chmod +x {} \;
```

## Install gtk and icon theme
```
sudo apt install lxappearance materia-gtk-theme papirus-icon-theme
```

then use lxappearance to set the themes