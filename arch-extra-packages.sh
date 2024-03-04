#!/bin/bash

sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S freecad -y
sudo pacman -S prusa-slicer -y
sudo pacman -S gimp -y
sudo pacman -S kdenlive -y
sudo pacman -S libreoffice -y
echo "[     1.41H_4.14u                ] Finished: 'arch-extra-packages.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-xonnos.sh' script--"
