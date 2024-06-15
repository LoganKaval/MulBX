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
        sudo cp config-files/waybar/config /etc/Jaiyk/waybar/config
        sudo cp config-files/waybar/style.css /etc/Jaiyk/waybar/style.css
        cp config-files/river/debian-init /home/$dir/.config/river/init
        sudo cp config-files/os-release/os-release /etc/os-release
        sudo cp -r backgrounds /usr/share/backgrounds/Jaiyk
        sudo cp config-files/bashrc/bashrc /etc/skel/.bashrc
        sudo cp config-files/river/debian-init /etc/skel/.config/river/init
        sudo cp config-files/install-type/install-type /etc/Jaiyk/install-type
        sudo cp config-files/bashrc/bashrc /etc/Jaiyk/bac-files/bashrc
        sudo cp config-files/waybar/config /etc/Jaiyk/bac-files/waybar/config
        sudo cp config-files/waybar/style.css /etc/Jaiyk/bac-files/waybar/style.css
        sudo cp config-files/river/debian-init /etc/Jaiyk/bac-files/river/init
        sudo cp config-files/os-release/os-release /etc/Jaiyk/bac-files/os-release
        sudo cp config-files/install-type/install-type /etc/Jaiyk/bac-files/install-type

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