#!/bin/bash

# Hello

echo "
       ____________________       ________________         ________          ________
       |                   |     |    ________    |        \       \        /       /
       |    ___     ___    |     |   |________|   |         \       \      /       /
       |   |   |   |   |   |     |               /           \       \    /       / 
       |   |   |   |   |   |     |   __________  \            \       \__/       /
       |   |   |   |   |   |     |  |          |  |            \                / 
       |   |   |   |   |   |     |  |__________|  |            /      ____      \ 
       |___|   |___|   |   |     |________________/           /      /    \      \ 	    
                       |   |                                 /      /      \______\ 
    ___________________|   |________________________________/      /______________________        
    \                                                                                    /
    /____________________________________________________________________________________\ 
"

rounds 1
until [ "$rounds" = 5 ]
do
	echo "Prepairing MulBX Installer..."
	echo "Just One Moment Please!"
	sleep 0.3s
	(( rounds ++ ))
done


# Warnings and Beginning
echo "This Will Turn Arch Linux Into MulBX!"
echo "Exit the Script If your not on Arch or if Your Not in a User Directory!"
echo "You Have Five Seconds to do so"
sleep 7

# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir


sleep 10


# To Install Packages in the Package List
chmod +x arch-packages.sh
bash arch-packages.sh


# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.xmonad
sudo mkdir /usr/share/backgrounds

# Moving Files


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/MulBX/xmobar/xmobar.config
cp arch-xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp arch-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp bashrc /etc/skel/.bashrc
sudo cp arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs
sudo cp install-type /etc/MulBX/install-type

# Extra Packages
echo "Would You Like to Install Office and Media Packages?(y/n)"
read extpak

if [ "$extpak" = "y" ];
then
	echo "More Packages Will be Installed!"
	chmod +x arch-extra-packages.sh
	bash arch-extra-packages.sh
else
	echo "No Extra Pacakges Will be Installed!"
fi

# Adding My Own Packages

echo "Would You Like to Install Custom Packages?(y/n)"
read cpak

if [ "$cpak" = "y" ];
then
	chmod +x arch-custom-pak.sh
	bash arch-custom-pak.sh

else
	echo "Custom Packages Will Not be Installed!"

fi

# Allowing Scripts to Have Execute Privileges


sudo chmod +x /etc/MulBX/scripts/shutdown.sh
sudo chmod +x /etc/MulBX/scripts/reboot.sh

echo "Do You Want to Install A Backup Desktop Environment?(y/n)"
sleep 3
echo "The Options are:"
echo "KDE"
echo "GNOME"
echo "Xfce"
echo "LXQT"
echo "Cinnamon"
echo "MATE"
echo "Budgie"
sleep 2
read  desk

sleep 10


if [ "$desk" = "y" ];
then
	echo "Do You Want KDE?(y/n)"
	read  kde
	sleep 7
    if [ "$kde" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S plasma -y

	else
		echo "KDE Will Not Be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install GNOME?(y/n)"
	read  gnome
        sleep 7

	if [ "$gnome" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S gnome -y

	else
		echo "GNOME Will Not be Installed!"
	fi

    sleep 5

	echo "Do You Want to Install Xfce?(y/n)"
	read  xfce
	sleep 7

	if [ "$xfce" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S xfce4 xfce4-goodies -y

	else
		echo "Xfce Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install LXQT?(y/n)"
	read  lxqt
	sleep 7

	if [ "$lxqt" = "y" ];
	then 
        sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S xorg lxqt -y

	else
		echo "LXQT Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install Cinnamon?(y/n)"
	read  cin
	sleep 7

	if [ "$cin" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S cinnamon -y

	else
		echo "Cinnamon Will Not be Installed!"
	
	fi

	sleep 5
    echo "Do You Want to Install MATE?(y/n)"
	read  mate
	sleep 7

	if [ "$MATE" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S mate -y
	else
		echo "MATE Will Not be Installed!"

	fi
	
	sleep 5
	echo "Do You Want to Install Budgie?(y/n)"
        read  bud
	sleep 7

	if [ "$bud" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S budgie -y
	else
		echo "Budgie Will Not be Installed!"
	fi

    else
	echo "No Extra Desktop Environments Will be Installed!"

fi


# Extra Package Manager(s)


echo "Do You Want to Install Extra Package Managers?(y/n)"
read  pak
sleep 7

if [ "$pak" = "y" ];
then
    echo "Do You Want to Install the Nix Package Manager?(y/n)"
	read  nix
	sleep 7

	if [ "$nix" = "y" ];
	then
		sudo pacman -Syu && sudo pacman -Syy
		sudo pacman -S nix

	else
		echo "Nix Will Not be Installed!"
	fi

else
	echo "No Extra Package Managers Will be Installed"

fi



# Making Directories Again

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.xmonad
sudo mkdir /usr/share/backgrounds

# Moving Files Again


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/MulBX/xmobar/xmobar.config
cp arch-xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp arch-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp bashrc /etc/skel/.bashrc
sudo cp arch-xmonad.hs /etc/skel/.xmonad/xmonad.hs
sudo cp install-type /etc/MulBX/install-type



# Version Code

echo "Do You Have a Version Code?(y/n)"
read codeans

if [ "$codeans" = "y" ]; 
then
	chmod +x arch-ver-code.sh
 	bash arch-ver-code.sh
else
	echo "Ok! Continuing Install!"
fi

# UFW Setup

chmod +x arch-ufw-setup.sh
bash arch-ufw-setup.sh


# Finishing Up

xmonad --recompile
echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot