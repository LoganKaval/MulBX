#!/bin/bash


sudo zypper refresh
sudo zypper update
sudo zypper install chromium -y
sudo zypper install thunar -y
sudo zypper install cheese -y
sudo zypper install git -y
sudo zypper install wget -y
sudo zypper install river -y
sudo zypper install waybar -y 
sudo zypper install brave -y
sudo zypper install brave-browser -y
sudo zypper install foot -y
sudo zypper install fuzzel -y
sudo zypper install featherpad -y
sudo zypper install nitrogen -y
sudo zypper install vim -y
sudo zypper install screenfetch -y
sudo zypper install ranger -y
sudo zypper install btop -y
sudo zypper install qt5ct -y
sudo zypper install ufw -y
sudo zypper install lxappearance -y
sudo zypper install gnome-clocks -y
sudo zypper install xfce4-power-manager -y
sudo zypper install nano - y
sudo zypper install mc -y
sudo zypper install curl -y
sudo zypper refresh
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo zypper install brave-browser
sudo zypper install spectacle -y
sudo zypper install ghc-xmonad-contrib-devel -y

echo "[     1.41H_4.14u                ] Finished: 'opensuse-packages.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'opensuse-to-jaiyk.sh' script--"
