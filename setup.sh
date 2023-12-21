#!/bin/bash

# Ryan's Arch Linux Setup Script

# Run this AFTER installing base arch via ArchInstall with the I3 preset

cd $HOME
sudo echo "color" >> /etc/pacman.conf
sudo echo "ParallelDownloads= 5" >> /etc/pacman.conf
sudo echo "ILoveCandy" >> /etc/pacman.conf

# PHASE ZERO: Update system (just in case)

sudo pacman -Syu

# PHASE ONE: Install Yay

sudo pacman -S --needed git base-devel vi man-db man-pages pacman-contrib
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd $HOME

# Yay is insalled, we don't need it anymore

rm -rf ~/yay

yay -S --needed arandr bat blueman bluez bluez-utils brightnessctl btop cava discord dunst expac eza feh firefox font-manager htop hugo i3blocks i3lock i3status jre-openjdk-headless kitty libpulse lightdm lightdm-gtk-greeter maim man-db man-pages neofetch neovim network-manager-applet nvm pacman-contrib picom pipewire pipewire-alsa pipewire-jack pipewire-pulse playerctl ranger rofi smartmontools spotify spotify-tui spotifyd sysstat thefuck vi vim visual-studio-code-bin wget wireless_tools wireplumber xclip xdg-utils xdotool xorg-xinit xorg-xrandr yay zsh zsh-theme-powerlevel10k-git fzf github-cli

# PHASE TWO: Copy some configs

cd RyanArchSetup

mkdir ~/Images
cp bg.jpg ~/Images

sudo cp powerlevel10k.zsh-theme /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

sudo cp profile /etc/profile

cp configs ~/.config

cp .bashrc $HOME/.bashrc
cp .zshrc $HOME/.zshrc

clear

neofetch
