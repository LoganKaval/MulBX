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
        cp config-files/bashrc/bashrc /home/$usr/.bashrc

else
        echo "Bashrc Will Not Be Copied!"

fi 

echo "Do You Want to Copy the New Backgrounds?(y/n)"
read bak

sleep 5

if [ "$bak" = "y" ];
then 
        echo "Backgrounds Will be Copied!"
        sudo cp -r backgrounds /usr/share/backgrounds/MulBX

else
        echo "Files Will Not Be Copied!"

fi

echo "Do You Want to Copy XMonad.hs and XMobar.config?(y/n)"
read xcon

sleep 5

if [ "$xcon" = "y" ];
then
        echo "Files Will Be Copied"
        sudo cp config-files/xmobar/xmobar.config /etc/MulBX/xmobar.config
        cp config-files/xmonad/arch-xmonad.hs /home/$usr/.xmonad/xmonad.hs
	sudo cp config-files/xmonad/arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs
	sudo cp config-files/bashrc/bashrc /etc/skel/.bashrc
        sudo xmonad --recompile && xmonad --restart
        xmonad --recompile && xmonad --restart
else
        echo "These Files Will Not Be Upgraded to the Newest Version!"
fi
# Running Package Script
chmod +x port/pak/packages.sh
bash port/pak/packages.sh

#
echo "Almost Done!"

sudo cp config-files/os-release/arch-os-release /etc/os-release


# Version Code

echo "Do You Have a Version Code?(y/n)"
read codeans

if [ "$codeans" = "y" ]; 
then
	chmod +x port/ver/arch-ver-code.sh
 	bash port/ver/arch-ver-code.sh
else
	echo "Ok! Continuing Install!"
fi

echo "Finished!!!"