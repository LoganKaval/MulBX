#!/bin/bash

# Warnings and Beginning
echo "This Will Turn Debian GNU/Linux to XonNOS GNU/Linux!"
echo "If Your Not on Debian or a Debian Based Distro Please Do Not This"
echo "This Might Lead to Data if Done So!!!"
sleep 5
echo "Also Make Sure You Are in a Users Home Directory"
echo "You have 10 Seconds After This Message to Exit!"
sleep 15
sudo su


# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read = dir

# Installing Software


apt update
apt upgrade
apt install chromium
apt install libreoffice
apt install cheese
apt install git
apt install wget
apt install xmonad
apt install xmobar
apt install xterm
apt install terminator
apt install featherpad
apt install nitrogen
apt install compton
apt install vim
apt install neofetch
apt install ranger
apt install btop
apt install dmenu
apt install qt5ct
apt install gnome-clocks
apt install xfce4-power-manager
apt install nano
apt install mc
apt install asciiquarium
apt install curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.config/xmobar
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts

# Moving Files


cp bashrc /home/$dir/.bashrc
cp xmobar.config /home/$dir/.config/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad.xmonad.hs
cp shutdown.sh /home/$dir/.xmonad/scripts/shutdown.sh
cp reboot.sh /home/$dir/.xmonad/scripts/reboot.sh


# Allowing Scripts to Have Execute Privileges


chmod +x /home/$dir/.xmonad/scripts/shutdown.sh
chmod +x /home/$dir/.xmonad/scripts/reboot.sh


# Finishing Up

echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
reboot
