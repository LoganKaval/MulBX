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
echo "This Will Turn Debian GNU/Linux to MulBX GNU/Linux!"
echo "If Your Not on Debian or a Debian Based Distro Please Do Not This"
echo "This Might Lead to Data if Done So!!!"
sleep 3
echo "Also Make Sure You Are in a User's ~/MulBX Directory"
echo "You have 10 Seconds After This Message to Exit!"
sleep 7


# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir

sleep 10


# To Install Packages in the Package List
chmod +x port/pak/packages.sh
bash port/pak/packages.sh

# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.config/river
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.config/river
sudo mkdir /usr/share/backgrounds
sudo mkdir /etc/MulBX/bac-files
sudo mkdir /etc/MulBX/bac-files/river
sudo mkdir /etc/MulBX/bac-files/waybar

# Moving Files


cp config-files/bashrc/bashrc /home/$dir/.bashrc
sudo cp config-files/waybar/config /etc/MulBX/waybar/config
sudo cp config-files/waybar/style.css /etc/MulBX/waybar/style.css
cp config-files/river/debian-init /home/$dir/.config/river/init
sudo cp config-files/os-release/os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp config-files/bashrc/bashrc /etc/skel/.bashrc
sudo cp config-files/river/debian-init /etc/skel/.config/river/init
sudo cp config-files/install-type/install-type /etc/MulBX/install-type
sudo cp config-files/bashrc/bashrc /etc/MulBX/bac-files/bashrc
sudo cp config-files/waybar/config /etc/MulBX/bac-files/waybar/config
sudo cp config-files/waybar/style.css /etc/MulBX/bac-files/waybar/style.css
sudo cp config-files/river/debian-init /etc/MulBX/bac-files/river/init
sudo cp config-files/os-release/os-release /etc/MulBX/bac-files/os-release
sudo cp config-files/install-type/install-type /etc/MulBX/bac-files/install-type


# Extra Packages
echo "Would You Like to Install Office and Media Packages(y/n)"
read extpak
sleep 7

if [ "extpak" = "y" ];
then
	echo "More Packages Will be Installed!"
	chmod +x port/pak/debian-extra-packages.sh
	bash port/pak/debian-extra-packages.sh
else
	echo "No Extra Pacakges Will be Installed!"
fi

sleep 5

if [ "$cpak" = "y" ];
then
	chmod +x port/pak/debian-custom-pak.sh
	bash port/pak/debian-custom-pak.sh

else
	echo "Custom Packages Will Not be Installed!"

fi

# Extra Desktop Environments


echo "Do You Want to Install A Backup Desktop Environment?(y/n)"
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
sudo mkdir /etc/MulBX
sudo mkdir /etc/MulBX/xmobar
sudo mkdir /usr/share/backgrounds/MulBX
sudo mkdir /etc/skel/.config/river
sudo mkdir /usr/share/backgrounds
sudo mkdir /etc/MulBX/bac-files
sudo mkdir /etc/MulBX/bac-files/river
sudo mkdir /etc/MulBX/bac-files/waybar

# Moving Files


cp config-files/bashrc/bashrc /home/$dir/.bashrc
sudo cp config-files/waybar/config /etc/MulBX/waybar/config
sudo cp config-files/waybar/style.css /etc/MulBX/waybar/style.css
cp config-files/river/debian-init /home/$dir/.config/river/init
sudo cp config-files/os-release/os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/MulBX
sudo cp config-files/bashrc/bashrc /etc/skel/.bashrc
sudo cp config-files/river/debian-init /etc/skel/.config/river/init
sudo cp config-files/install-type/install-type /etc/MulBX/install-type
sudo cp config-files/bashrc/bashrc /etc/MulBX/bac-files/bashrc
sudo cp config-files/waybar/config /etc/MulBX/bac-files/waybar/config
sudo cp config-files/waybar/style.css /etc/MulBX/bac-files/waybar/style.css
sudo cp config-files/river/debian-init /etc/MulBX/bac-files/river/init
sudo cp config-files/os-release/os-release /etc/MulBX/bac-files/os-release
sudo cp config-files/install-type/install-type /etc/MulBX/bac-files/install-type



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

# UFW Setup

chmod +x port/ufw/debian-ufw-setup.sh
bash port/ufw/debian-ufw-setup.sh

# Finishing Up

xmonad --recompile
echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot

