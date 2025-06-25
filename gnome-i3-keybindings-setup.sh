#!/usr/bin/env bash
# gnome-i3-keybindings-setup.sh
#   – fixed workspaces 1-9
#   – Super-number jump / move
#   – Alt+Tab limited to current workspace
#   – Vim-like tiling & maximise keys
set -euo pipefail

### 1. Workspaces #####################################################
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 9

# Free Super+1…9 from “launch favourite app”
for i in {1..9}; do
  gsettings set org.gnome.shell.keybindings "switch-to-application-$i" "[]"
done

# Bind Super+N  /  Super+Shift+N
for i in {1..9}; do
  gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-$i" "['<Super>$i']"
  gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-$i"   "['<Super><Shift>$i']"
done

### 2. Alt-Tab only shows windows on the active workspace #############
gsettings set org.gnome.shell.app-switcher    current-workspace-only true
gsettings set org.gnome.shell.window-switcher current-workspace-only true   # for Alt+`

### 3. Vim-style tiling / maximise ####################################
# 3-a  Remove GNOME’s default minimise shortcut (<Super>h)
gsettings set org.gnome.desktop.wm.keybindings minimize "[]"

# 3-b  Re-bind tiling & maximise
gsettings set org.gnome.mutter.keybindings toggle-tiled-left  "['<Super>h']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>l']"
gsettings set org.gnome.desktop.wm.keybindings maximize       "['<Super>k']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize     "['<Super>j']"

### 4. Close window with Super+Q (and still Alt+F4) ###################
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q', '<Alt>F4']"

echo "OK: All keybindings applied."