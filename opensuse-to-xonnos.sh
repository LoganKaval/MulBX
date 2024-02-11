#!/bin/bash

# Beginning and Warnings
echo "This is a Script to Turn OpenSUSE into XonNOS!"
echo "Exit Now if Needed(ctrl+c)"
sleep 5


# Installing Packages
sudo su
zypper refresh
zypper update
zypper install xmonad
zypper install xmobar
zypper install picom
zypper install nitrogen
zypper install xfce-power-manager
zypper install libreoffice
zypper install thunar
zypper install vim
zypper install git
zypper install wget
zypper install brave
zypper install chromium
zypper install dmenu
zypper install xterm
zypper install terminator
zypper install gnome


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
