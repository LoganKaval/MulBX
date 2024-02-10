#!/bin/bash

# Beginning and Warnings
echo "This Will Turn a NixOS Install To a XonNOS Install"
sleep 1
echo "Do NOT Run This if Your NOT in a Default NixOS Install; There Might be Problems and Data Lost if Done So!"
sleep 1
echo "If so Please Hold Down Control and C to Exit(ctrl+c)"
echo "You Have 5 Seconds to Exit!!!"
sleep 6
sudo su

#Fetching Info

pwd = dir

# Moving NixOS Config and Recompiling

cp configuration.nix /etc/nixos/configuration.nix
nixos-rebuild switch

# Bashrc, Xmobar, and XMonad Direrctories Being Created

mkdir $dir/.config
mkdir $dir/.config/xmobar
mkdir $dir/.xmonad
# Moving Configuration Files


cp .bashrc $dir/.bashrc
cp xmobar.config $dir/.config/xmobar/xmobar.config
cp xmonad.hs $dir/.xmonad/xmonad.hs

# Finishing Up

xmonad --recompile
xmonad --restart

echo "All Finished The Computer Will Now Reboot!"
sleep 3
reboot
