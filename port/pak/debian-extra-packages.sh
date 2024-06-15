#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install freecad -y
sudo apt install prusa-slicer -y
sudo apt install gimp -y
sudo apt install kdenlive -y
sudo apt install libreoffice -y

echo "[     1.41H_4.14u                ] Finished: 'debian-extra-packages.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'debian-to-jaiyk.sh' script--"
