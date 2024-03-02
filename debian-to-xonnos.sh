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
sudo apt install tty-clock -y
sudo apt install chromium-browser -y
sudo apt install thunar -y
sudo apt install libreoffice -y
sudo apt install cheese -y
sudo apt install git -y
sudo apt install wget -y
sudo apt install xmonad -y
sudo apt install xmobar -y
sudo apt install xterm -y
sudo apt install terminator -y
sudo apt install featherpad -y
sudo apt install nitrogen -y
sudo apt install compton -y
sudo apt install vim -y
sudo apt install neofetch -y
sudo apt install ranger -y
sudo apt install btop -y
sudo apt install dmenu -y
sudo apt install qt5ct -y
sudo apt install gnome-clocks -y
sudo apt install xfce4-power-manager -y
sudo apt install nano -y
sudo apt install mc -y
sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
sudo apt install kde-spectacle -y
sudo apt install libghc-xmonad-contrib-dev

# To Install Packages in the Package List
chmod +x packages.sh
bash packages.sh

# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts
sudo mkdir /usr/share/backgrounds/XonNOS
sudo mkdir /etc/skel/.xmonad

# Moving Files


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/XonNOS
sudo cp bashrc /etc/skel/.bashrc
sudo cp xmonad.hs /etc/skel/.xmonad/xmonad.hs

# Allowing Scripts to Have Execute Privileges


sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
sudo chmod +x /etc/XonNOS/scripts/reboot.sh

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
		sudo apt install kde-plasma-desktop -y

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
		sudo apt install task-gnome-desktop -y

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
		sudo apt install xfce4 xfce4-goodies -y

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
		sudo apt install lxqt-core lxqt task-lxqt-desktop -y

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
		sudo apt install task-cinnamon-desktop -y

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
		sudo apt install mate-desktop-environment mate-desktop-environment-extras -y
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
		sudo apt install budgie-desktop -y
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
		sudo apt install nala -y
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


# Making Directories Again

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts
sudo mkdir /usr/share/backgrounds/XonNOS
sudo mkdir /etc/skel/.xmonad

# Moving Files Again


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/XonNOS
sudo cp bashrc /etc/skel/.bashrc
sudo cp xmonad.hs /etc/skel/.xmonad/xmonad.hs

# Allowing Scripts to Have Execute Privileges Again


sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
sudo chmod +x /etc/XonNOS/scripts/reboot.sh

# Finishing Up

echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot


