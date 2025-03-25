# Setup Guide

## Install Linux Mint
Make sure NOT to enable autologin.

After installation, run: `sudo apt update && sudo apt upgrade -y`

## Install i3
```sudo apt install i3```

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

## Install Alacritty

### Prerequisites

Clone the source code:
```
git clone https://github.com/alacritty/alacritty.git
cd alacritty
```

Install the Rust compiler with rustup:
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

To make sure you have the right Rust compiler installed, run:
```
rustup override set stable
rustup update stable
```