# Setup Guide
## Install and Update Fedora
After installation follow: https://github.com/devangshekhawat/Fedora-42-Post-Install-Guide

# General
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

## Install stow alacritty zsh
Run:
```
sudo dnf install stow alacritty zsh
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

## Set the Wallpaper
set `dotfiles/.config/images/wallpaper.jpg` as the wallpaper

# Gnome
## Setup i3-like Keybindings for Gnome

* Fixed workspaces 1-9
* Super + number -> switch workspace
* Super + Shift + number -> send to workspace
* Alt+Tab limited to current workspace
* Vim-like tiling & maximise keys:
    * Super+h -> tile left
    * Super+l -> tile right
    * Super+k -> maximise
    * Super+j -> unmaximise / restore
* Super + q -> close

```
cd dotfiles
./gnome-i3-keybindings-setup.sh
```

## Install gnome-tweaks gnome-extensions-app
```
sudo dnf install gnome-tweaks gnome-extensions-app
```

## Rebind Caps Lock to Escape and Shift + Caps Lock to Caps Lock
1. Launch gnome-tweaks
2. Go to "Keyboard"
3. Click on "Additional Layout Options"
4. Select the "Caps Lock Behaviour" dropdown
5. Enable "Make Caps Lock an additional Esc, but Shift + Caps Lock is regular Caps Lock"

## Enable Launch New Instance
1. Launch gnome-extensions-app
2. Enable "Launch New Instance"

## Enable 24 Hour Clock
1. Go to Gnome settings
2. Go to System
3. Go to Date and Time
4. Switch clock to 24 hours

## Rounded Corners and Borders
Install: https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/

In the settings of the Rounded Window Corners Reborn extension:
1. Set border width to 1px
2. Set border color to the middle one in the last column
3. Set border radius to 15px
4. Set all paddings to 0px

## Blurred Top Bar
Install: https://extensions.gnome.org/extension/3193/blur-my-shell/

## Smaller Top Bar
Install: https://extensions.gnome.org/extension/3843/just-perfection/

In the settings of the Just Perfection extension:
1. Enable shell theme override
2. Set panel size to 22px
3. Set panel icon size to 12px

## Add Window Title to Top Bar
Install: https://extensions.gnome.org/extension/6310/window-title-is-back/

In the settings of the Window Title Is Back Extension:
1. Disable Show Icon
2. Disable Show App Name