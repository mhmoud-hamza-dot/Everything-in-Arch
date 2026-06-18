#!/bin/bash

source ./utils.sh

# AUR helper(yay)
if command -v yay &> /dev/null; then
log " yay already exists"
else
log " >>>yay Not available, installing yay"
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd ..
fi

# Update & Upgrade
sudo pacman -Syu

# Packages
pacman_packages=(
fzf zoxide fastfetch starship reflector openssh
)

# AUR Packages
aur_packages=(
preload zram-generator google-chrome
zen-browser brave-bin vim obs-studio picom
qbittorrent protonup-qt faugus-launcher discord
gamemode lib32-gamemode
)

# Installing
log " >>>installing pacman Packages..."
sudo pacman -S --noconfirm "${pacman_packages[@]}"

log " >>>installing AUR Packages..."
yay -S --noconfirm "${aur_packages[@]}"
