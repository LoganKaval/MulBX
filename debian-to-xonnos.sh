#!/bin/bash

# Warnings and Beginning
echo "This Will Turn Debian GNU/Linux to XonNOS GNU/Linux!"
echo "If Your Not on Debian or a Debian Based Distro Please Do Not This"
echo "This Might Lead to Data if Done So!!!"
sleep 5
echo "Also Make Sure You Are in a User's ~/XonNOS Directory"
echo "You have 10 Seconds After This Message to Exit!"
sleep 15


# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir

sleep 10
# Installing Software


sudo apt update
sudo apt upgrade
sudo apt install tty-clock
sudo apt install chromium-browser
sudo apt install thunar
sudo apt install libreoffice
sudo apt install cheese
sudo apt install git
sudo apt install wget
sudo apt install xmonad
sudo apt install xmobar
sudo apt install xterm
sudo apt install terminator
sudo apt install featherpad
sudo apt install nitrogen
sudo apt install compton
sudo apt install vim
sudo apt install neofetch
sudo apt install ranger
sudo apt install btop
sudo apt install dmenu
sudo apt install qt5ct
sudo apt install gnome-clocks
sudo apt install xfce4-power-manager
sudo apt install nano
sudo apt install mc
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
sudo apt install kde-spectacle


# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.config/xmobar
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts


# Moving Files


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad.xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh


# Allowing Scripts to Have Execute Privileges


chmod +x /etc/XonNOS/scripts/shutdown.sh
chmod +x /etc/XonNOS/scripts/reboot.sh

# Extra Desktop Environments


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
		sudo apt update
		sudo apt install kde-plasma-desktop

	else
		echo "KDE Will Not Be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install GNOME?(y/n)"
	read  gnome
        sleep 7

	if [ "$gnome" = "y" ];
	then
		sudo apt update
		sudo apt install task-gnome-desktop

	else
		echo "GNOME Will Not be Installed!"
	fi

	sleep 5

	echo "Do You Want to Install Xfce?(y/n)"
	read  xfce
	sleep 7

	if [ "$xfce" = "y" ];
	then
		sudo apt update
		sudo apt install xfce4 xfce4-goodies

	else
		echo "Xfce Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install LXQT?(y/n)"
	read  lxqt
	sleep 7

	if [ "$lxqt" = "y" ];
	then 
		sudo apt update
		sudo apt install lxqt-core lxqt task-lxqt-desktop

	else
		echo "LXQT Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install Cinnamon?(y/n)"
	read  cin
	sleep 7

	if [ "$cin" = "y" ];
	then
		sudo apt update
		sudo apt install task-cinnamon-desktop

	else
		echo "Cinnamon Will Not be Installed!"
	
	fi

	sleep 5

	echo "Do You Want to Install MATE?(y/n)"
	read  mate
	sleep 7

	if [ "$MATE" = "y" ];
	then
		sudo apt update
		sudo apt install mate-desktop-environment mate-desktop-environment-extras
	else
		echo "MATE Will Not be Installed!"

	fi
	
	sleep 5
	echo "Do You Want to Install Budgie?(y/n)"
        read  bud
	sleep 7

	if [ "$bud" = "y" ];
	then
		sudo apt update
		sudo apt install budgie-desktop
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
	echo "Do You Want to Install Nala?(y/n)"
	read  nala
	sleep 7

	if [ "$nala" = "y" ];
	then
		sudo apt update
		sudo apt install nala
	else
		echo "Nala Will Not be Installed!"
	fi

	sleep 3

	echo "Do You Want to Install the Nix Package Manager?(y/n)"
	read  nix
	sleep 7

	if [ "$nix" = "y" ];
	then
		sudo apt update
		sh <(curl -L https://nixos.org/nix/install) --daemon

	else
		echo "Nix Will Not be Installed!"
	fi

else
	echo "No Extra Package Managers Will be Installed"

fi

# Finishing Up

echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot
