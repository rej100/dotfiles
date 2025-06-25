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

# Gnome
## Setup i3-like Keybindings for Gnome

* Fixed workspaces 1-9
* Super-number jump / move
* Alt+Tab limited to current workspace
* Vim-like tiling & maximise keys:
    * Super+h -> tile left
    * Super+l -> tile right
    * Super+k -> maximise
    * Super+j -> unmaximise / restore

```
cd dotfiles
./gnome-i3-keybindings-setup.sh
```

## Install gnome-tweaks
```
sudo dnf install gnome-tweaks
```
## Rebind Caps Lock to Escape and Shift + Caps Lock to Caps Lock
Then:
1. Launch gnome-tweaks
2. Go to "Keyboard"
3. Click on "Additional Layout Options"
4. Select the "Caps Lock Behaviour" dropdown
5. Enable "Make Caps Lock an additional Esc, but Shift + Caps Lock is regular Caps Lock"