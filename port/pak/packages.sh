#!/bin/bash


sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt install tty-clock -y
sudo apt install chromium-browser -y
sudo apt install thunar -y
sudo apt install libreoffice -y
sudo apt install cheese -y
sudo apt install git -y
sudo apt install wget -y
sudo apt install xmonad -y
sudo apt install xmobar -y
sudo apt install xterm -y
sudo apt install terminator -y
sudo apt install featherpad -y
sudo apt install nitrogen -y
sudo apt install slock -y
sudo apt install compton -y
sudo apt install vim -y
sudo apt install screenfetch -y
sudo apt install ufw -y
sudo apt install ranger -y
sudo apt install btop -y
sudo apt install dmenu -y
sudo apt install qt5ct -y
sudo apt install gnome-clocks -y
sudo apt install xfce4-power-manager -y
sudo apt install nano -y
sudo apt install mc -y
sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
sudo apt install kde-spectacle -y
sudo apt install libghc-xmonad-contrib-dev -y

echo "[     1.41H_4.14u                ] Finished: 'debian-packages.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'debian-to-mulbx.sh' script--"
