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
        sudo cp -r backgrounds /usr/share/backgrounds/MulBX

else
        echo "Files Will Not Be Copied!"

fi

echo "Do You Want to Copy XMonad.hs and XMobar.config?(y/n)"
read xcon

sleep 5

if [ "$xcon" = "y" ];
then
        cp bashrc /home/$dir/.bashrc
        sudo cp xmobar.config /etc/MulBX/xmobar/xmobar.config
        cp opensuse-xmonad.hs /home/$dir/.xmonad/xmonad.hs
        sudo xmonad --recompile && xmonad --restart
        xmonad --recompile && xmonad --restart
        sudo cp opensuse-os-release /etc/os-release
        sudo cp -r backgrounds /usr/share/backgrounds/MulBX
        sudo cp bashrc /etc/skel/.bashrc
        sudo cp opensuse-xmonad.hs /etc/skel/.xmonad/xmonad.hs
        sudo cp install-type /etc/MulBX/install-type
        sudo xmonad --recompile && xmonad --restart
        xmonad --recompile && xmonad --restart
else
        echo "These Files Will Not Be Upgraded to the Newest Version!"
fi
# Running Package Script
chmod +x opensuse-packages.sh
bash opensuse-packages.sh

#
echo "Almost Done!"

sudo cp os-release /etc/os-release


# Version Code


echo "Do You Have a Version Code?(y/n)"
read codeans

sleep 5

if [ "$codeans" = "y" ]; 
then
	chmod +x opensuse-ver-code.sh
 	bash opensuse-ver-code.sh
else
	echo "Ok! Continuing Install!"
fi

echo "Finished The Installation!!!"