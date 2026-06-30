#!/bin/bash

source ./utils.sh

# Update & Upgrade
sudo pacman -Syu

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


# Packages
pacman_packages=(
fzf zoxide fastfetch starship reflector openssh mangohud
)

# AUR Packages
aur_packages=(
preload google-chrome
zen-browser-bin brave-bin vim obs-studio picom
qbittorrent protonup-qt faugus-launcher discord
)

# Installing
log " >>>installing pacman Packages..."
sudo pacman -S --noconfirm "${pacman_packages[@]}"

log " >>>installing AUR Packages..."
yay -S --noconfirm "${aur_packages[@]}"
