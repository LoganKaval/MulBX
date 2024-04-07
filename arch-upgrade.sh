#!/bin/bash

# Warinings 
echo "This Will Update You to the New MulBX Release!"
echo "Leave Now if Needed!"
sleep 5

echo "What Account Are You In? Root Will Not Work!"
read usr

# Coping Files

echo "Do You Want to Copy the New Bashrc File?(y/n)"
read bashrc

sleep 5

if [ "$bashrc" = "y" ] ;
then
        cp bashrc /home/$usr/.bashrc

else
        echo "Bashrc Will Not Be Copied!"

fi 

echo "Do You Want to Copy the New Backgrounds?(y/n)"
read bak

sleep 5

if [ "$bak" = "y" ];
then 
        echo "Backgrounds Will be Copied!"
        sudo cp -r backgrounds /usr/share/backgrounds/XonNOS

else
        echo "Files Will Not Be Copied!"

fi

echo "Do You Want to Copy XMonad.hs and XMobar.config?(y/n)"
read xcon

sleep 5

if [ "$xcon" = "y" ];
then
        echo "Files Will Be Copied"
        sudo cp xmobar.config /etc/MulBX/xmobar.config
        cp arch-xmonad.hs /home/$usr/.xmonad/xmonad.hs
	sudo cp arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs
	sudo cp bashrc /etc/skel/.bashrc
        sudo xmonad --recompile && xmonad --restart
        xmonad --recompile && xmonad --restart
else
        echo "These Files Will Not Be Upgraded to the Newest Version!"
fi
# Running Package Script
chmod +x packages.sh
bash packages.sh

#
echo "Almost Done!"

sudo cp arch-os-release /etc/os-release
sudo cp neofetch /usr/bin/neofetch

