#!/bin/bash

# Warinings 
echo "This Will Update You to the New XonNOS Release!"
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
        sudo cp xmobar.config /etc/XonNOS/xmobar.config
        cp xmonad.hs /home/$usr/.xmonad/xmonad.hs
        sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
        sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
        sudo cp xmonad.hs /etc/skel/.xmonad/xmonad.hs
        sudo cp bashrc /etc/skel/.bashrc

        sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
        sudo chmod +x /etc/XonNOS/scripts/reboot.sh
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

sudo cp os-release /etc/os-release
sudo cp neofetch /usr/bin/neofetch

