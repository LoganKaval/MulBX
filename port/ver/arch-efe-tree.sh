#!/bin/bash

# Validation

echo "Access Code: Vailed"
sleep .3
echo "Initiating Process"

echo " "
echo " "
sleep 3

# Welcome

echo " 
       _____________        _____________        _____________
       |   _________|       |   _________|       |   _________| 
       |   |_____           |   |_____           |   |_____
       |    _____|          |    _____|          |    _____|
       |   |________        |   |                |   |________
       |____________|       |___|                |____________| 
       _______________________________________________________
       \                                                      /
       /______________________________________________________\ 


"








echo "What User Directory Are You In?"
read efedir
sleep 5

# Installing Packages

sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S ly
sudo pacman -S picom
sudo pacman -S terminator

# Copying New Directories
cd ..
cd ..
cp config-files/bashrc/arch-efe-bashrc /home/$efedir/.bashrc
sudo cp config-files/bashrc/arch-efe-bashrc /etc/skel/.bashrc
sudo cp config-files/os-release/arch-efe-os-release /etc/os-release
sudo cp config-files/install-type/arch-efe-install-type /etc/MulBX/install-type


cp config-files/bashrc/arch-efe-bashrc /etc/MulBX/bac-files/bashrc
sudo cp config-files/os-release/arch-efe-os-release /etc/MulBX/bac-files/os-release
sudo cp config-files/install-type/arch-efe-install-type /etc/MulBX//bac-files/install-type
