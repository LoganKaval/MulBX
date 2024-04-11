#!/bin/bash

# Warnings and Beginning
echo "This Will Turn Debian GNU/Linux to MulBX GNU/Linux!"
echo "If Your Not on Debian or a Debian Based Distro Please Do Not This"
echo "This Might Lead to Data if Done So!!!"
sleep 2
echo "Also Make Sure You Are in a User's ~/MulBX Directory"
echo "You have 10 Seconds After This Message to Exit!"
sleep 7


# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir

sleep 10


# To Install Packages in the Package List
chmod +x opensuse-packages.sh
bash opensuse-packages.sh

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
cp opensuse-xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp opensuse-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp bashrc /etc/skel/.bashrc
sudo cp opensuse-xmonad.hs /etc/skel/.xmonad/xmonad.hs
sudo cp install-type /etc/MulBX/install-type


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
		sudo zypper refresh
		sudo zypper install -t pattern kde kde_plasma

	else
		echo "KDE Will Not Be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install GNOME?(y/n)"
	read  gnome
        sleep 7

	if [ "$gnome" = "y" ];
	then
		sudo zypper refresh
		sudo zypper -t pattern gnome_basic gnome gnome_x11
	else
		echo "GNOME Will Not be Installed!"
	fi

	sleep 5

	echo "Do You Want to Install Xfce?(y/n)"
	read  xfce
	sleep 7

	if [ "$xfce" = "y" ];
	then
		sudo zypper refresh
		sudo zypper install -t pattern gnome_basic gnome gnome_x11
	else
		echo "Xfce Will Not be Installed!"

	fi

	sleep 5

	echo "Do You Want to Install LXQT?(y/n)"
	read  lxqt
	sleep 7

	if [ "$lxqt" = "y" ];
	then 
		sudo zypper refresh
		sudo zypper install

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
cp opensuse-xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp opensuse-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp bashrc /etc/skel/.bashrc
sudo cp opensuse-xmonad.hs /etc/skel/.xmonad/xmonad.hs
sudo cp install-type /etc/MulBX/install-type



# Version Code


echo "Do You Have a Version Code?(y/n)"
read codeans

if [ "$codeans" = "y" ]; 
then
	chmod +x opensuse-ver-code.sh
 	bash opensuse-ver-code.sh
else
	echo "Ok! Continuing Install!"
fi


# Finishing Up

xmonad --recompile
echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot

