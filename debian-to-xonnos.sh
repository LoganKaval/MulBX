#!/bin/bash

# Beginning and Warnings
echo "This is a Script to Turn Debian into XonNOS!"
echo "Exit Now if Needed(ctrl+c)"
sleep 5


# Installing Packages
sudo su
apt update
apt upgrade
apt install xmonad
apt install xmobar
apt install picom
apt install nitrogen
apt install xfce-power-manager
apt install libreoffice
apt install thunar
apt install vim
apt install git
apt install wget
apt install brave
apt install chromium
apt install dmenu
apt install xterm
apt install terminator
apt install gnome


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
