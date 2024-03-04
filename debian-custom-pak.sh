#!/bin/bash

echo "What Package(s) Would You Like to Intall?"
echo "Keep a Space Inbetween!"
echo "Type Quit to Leave!"
read paknm

if [ "$paknm" = "quit" ];
then
    exit
else
    sudo pacman -Syu
    sudo pacman -Syy
    sudo pacman -S $paknm -y
