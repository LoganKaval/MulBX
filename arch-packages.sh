#!/bin/bash

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
sudo pacman -S xmonad-contrib -y
sudo pacman -S xmobar -y
sudo pacman -S xterm -y
sudo pacman -S terminator -y
sudo pacman -S featherpad -y
sudo pacman -S nitrogen -y
sudo pacman -S picom -y
sudo pacman -S vim -y
sudo pacman -S screenfetch -y
sudo pacman -S ranger -y
sudo pacman -S btop -y
sudo pacman -S lxappearance -y
sudo pacman -S slock -y
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
sudo pacman -S spectacle -y
sudo pacman -S ufw -y

echo "[     1.41H_4.14u                ] Finished: 'arch-packages.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-mulbx.sh' script--"
