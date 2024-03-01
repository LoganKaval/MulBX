#!/bin/bash

# Warnings and Beginning
echo "This Will Turn Arch Linux Into XonNOS!"
echo "Exit the Script If your not on Arch or if Your Not in a User Directory!"
echo "You Have Five Seconds to do so"
sleep 7

# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir

sleep 10

# Installing Software


sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S tty-clock -y
sudo pacman -S chromium-browser -y
sudo pacman -S thunar -y
sudo pacman -S libreoffice -y
sudo pacman -S cheese -y
sudo pacman -S git -y
sudo pacman -S wget -y
sudo pacman -S xmonad -y
sudo pacman -S xmobar -y
sudo pacman -S xterm -y
sudo pacman -S terminator -y
sudo pacman -S featherpad -y
sudo pacman -S nitrogen -y
sudo pacman -S picom -y
sudo pacman -S vim -y
sudo pacman -S neofetch -y
sudo pacman -S ranger -y
sudo pacman -S btop -y
sudo pacman -S dmenu -y
sudo pacman -S qt5ct -y
sudo pacman -S gnome-clocks -y
sudo pacman -S xfce4-power-manager -y
sudo pacman -S nano -y
sudo pacman -S mc -y
sudo pacman -S curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo pacman -S brave-browser -y
sudo pacman -S kde-spectacle -y
sudo pacman -S libghc-xmonad-contrib-dev

# To Install Packages in the Package List
chmod +x arch-packages.sh
bash arch-packages.sh


# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts
sudo mkdir /usr/share/backgrounds/XonNOS

# Moving Files


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/XonNOS

# Allowing Scripts to Have Execute Privileges


sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
sudo chmod +x /etc/XonNOS/scripts/reboot.sh