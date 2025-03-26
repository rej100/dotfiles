# Setup Guide

## Install Linux Mint
Make sure NOT to enable autologin.

After installation, run: `sudo apt update && sudo apt upgrade -y`

## Install KeePassXC
Run:
```
sudo apt install keepassxc
```

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

#### Set wallpaper
```
exec --no-startup-id feh --bg-scale ~/Pictures/wallpaper.jpg
```

#### Use vim keybindings
```
# Vim-style focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# Vim-style move window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

mode "resize" {
    bindsym h resize shrink width 10 px or 10 ppt
    bindsym j resize grow height 10 px or 10 ppt
    bindsym k resize shrink height 10 px or 10 ppt
    bindsym l resize grow width 10 px or 10 ppt

    bindsym Return mode "default"
    bindsym Escape mode "default"
    bindsym $mod+r mode "default"
}
```

Remap split direction keybindings to avoid conflicts:
```
# split in horizontal orientation
bindsym $mod+y split h

# split in vertical orientation
bindsym $mod+x split v
```

Start picom with i3:
```
exec --no-startup-id picom --experimental-backends
```

Add gaps:
```
# Configure 5px of space between windows and to the screen edges.
gaps inner 10px

# Configure an additional 5px of extra space to the screen edges,
# for a total gap of 10px to the screen edges, and 5px between windows.
gaps outer 10px

# Disable smart gaps
smart_gaps off
```

Start the dunst notification daemon:
```
exec --no-startup-id dunst
```

Add change the keybinidng for dmenu to rofi
```
bindsym $mod+d exec --no-startup-id rofi -show drun
```

Run the polybar launch script:
```
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
```

and remove the i3bar:
```
# Remove
bar {
    i3bar_command i3bar
}
```

## Install vim
```sudo apt install vim```

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

## Install zsh
Install zsh:
```
sudo apt install zsh -y
```

Make zsh the default shell:
```
chsh -s $(which zsh)
```

Install Oh My Zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

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

### Config
File path: ```~/.config/alacritty```

#### Use the catpuccin macchiato theme
Run:
```
curl -LO --output-dir ~/.config/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-macchiato.toml
```
Add to `alacritty.toml`:
```
[general]

import = [
    "~/.config/alacritty/catppuccin-macchiato.toml"
]
```

## Install feh
Run:
```
sudo apt install feh
```

Put a wallpaper in:
```
~/config/Pictures/wallpaper.jpg
```

## Install Picom
```
sudo apt install picoM
```

Copy the example config to `~/.config/picom/picom.conf`:
```
mkdir ~/.config/picom
cp /usr/share/doc/picom/examples/picom.sample.conf ~/.config/picom/picom.conf
```

### Config
The config file is located at: `~/.config/picom/picom.conf`

Speed up fade in:
```
fade-in-step = 0.1;
```

## Install dunst
Run:
```
sudo apt install dunst
```

Copy the default config:
```
mkdir -p ~/.config/dunst
cp /etc/xdg/dunst/dunstrc ~/.config/dunst/
```

### Config
The config file is located at: `~/.config/dunst/dunstrc`

Copy the contents of https://github.com/catppuccin/dunst/blob/main/themes/macchiato.conf into the config file:
```
[global]
frame_color = "#8aadf4"
separator_color= frame
highlight = "#8aadf4"

[urgency_low]
background = "#24273a"
foreground = "#cad3f5"

[urgency_normal]
background = "#24273a"
foreground = "#cad3f5"

[urgency_critical]
background = "#24273a"
foreground = "#cad3f5"
frame_color = "#f5a97f"
```

## Install Rofi

Run:
```
sudo apt install rofi
```

Dump the default config to `~/.config/rofi/config.rasi`
```
mkdir -p ~/.config/rofi
rofi -dump-config > ~/.config/rofi/config.rasi
```

### Config
The config file is located at: `~/.config/rofi/config.rasi`

Copy the files from https://github.com/catppuccin/rofi
```
@theme "catppuccin-default"
```

## Install Polybar
Run:
```
sudo apt install polybar
```

Copy the default config:
```
mkdir ~/.config/polybar
cp /etc/polybar/config.ini ~/.config/polybar
```

Create `~/.config/polybar/launch.sh`:
```
#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
```

And make it executable:
```
chmod +x $HOME/.config/polybar/launch.sh
```

## Install vscode
https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux

### Config
The config file is in:
```
~/.config/Code/User/settings.json 
```