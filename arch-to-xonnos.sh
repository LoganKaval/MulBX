#!/bin/bash

# Beginning and Warnings
echo "This is a Script to Turn Debian into XonNOS!"
echo "Exit Now if Needed(ctrl+c)"
sleep 5


# Installing Packages
sudo su
pacman -Syy
pacman -Syu
pacman -S xmonad
pacman -S xmobar
pacman -S picom
pacman -S nitrogen
pacman -S xfce-power-manager
pacman -S libreoffice
pacman -S thunar
pacman -S vim
pacman -S git
pacman -S wget
pacman -S yay base-devel
yay -S brave-bin
pacman -S chromium
pacman -S dmenu
pacman -S xterm
pacman -S terminator
pacman -S gnome


#Fetching Info

pwd = dir

# Creating Directories

mkdir $dir/.config
mkdir $dir/.config/xmobar
mkdir $dir/.xmonad

# Relocating Files

cp bashrc $dir/.bashrc
cp xmobar.config $dir/.config/xmobar/xmobar.config
cp xmonad.hs $dir/.xmonad/xmonad.hs

# Finishing Up

xmonad --recompile
xmonad --restart

echo "All Finsihed The Computer Will Now Reboot"
sleep 3
reboot
