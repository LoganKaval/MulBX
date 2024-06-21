#!/bin/bash

# Warinings 
echo "This Will Update You to the New Jaiyk Release!"
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
        sudo cp -r backgrounds /usr/share/backgrounds/Jaiyk

else
        echo "Files Will Not Be Copied!"

fi

echo "Do You Want to Copy XMonad.hs and XMobar.config?(y/n)"
read xcon

sleep 5

if [ "$xcon" = "y" ];
then
        
        
        cp config-files/bashrc/bashrc /home/$dir/.bashrc
        sudo cp config-files/xmobar/xmobar.config /etc/Jaiyk/xmobar/xmobar.config
        cp config-files/xmonad/xmonad.hs /home/$dir/.xmonad/xmonad.hs
        sudo xmonad --recompile && xmonad --restart
        xmonad --recompile && xmonad --restart
        sudo cp config-files/os-release/os-release /etc/os-release
        sudo cp -r backgrounds /usr/share/backgrounds/Jaiyk
        sudo cp config-files/bashrc/bashrc /etc/skel/.bashrc
        sudo cp config-files/xmonad/xmonad.hs /etc/skel/.xmonad/xmonad.hs
        sudo cp config-files/install-type/install-type /etc/Jaiyk/install-type
        sudo cp config-files/xmonad/xmonad.sh /etc/Jaiyk//bac-files/xmonad.sh
        sudo cp config-files/xmobar/xmobar.config /etc/Jaiyk/bac-files/xmobar.config
        sudo cp config-files/bashrc/bashrc /etc/Jaiyk/bac-files/bashrc

else
        echo "These Files Will Not Be Upgraded to the Newest Version!"
fi
# Running Package Script
chmod +x port/pak/packages.sh
bash port/pak/packages.sh

#
echo "Almost Done!"

sudo cp config-files/os-release/os-release /etc/os-release
sudo cp config-files/os-release/os-release /etc/Jaiyk/bac-files/os-release
# Version Code


echo "Do You Have a Version Code?(y/n)"
read codeans

sleep 5

if [ "$codeans" = "y" ]; 
then
	chmod +x port/ver/debian-ver-code.sh
 	bash port/ver/debian-ver-code.sh
else
	echo "Ok! Continuing Install!"
fi

echo "Finished The Installation!!!"