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
		sudo zypper install xfce4
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
		sudo zypper install lxqt

	else
		echo "LXQT Will Not be Installed!"

	fi


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
   echo "No Version Code Used"
   echo "Continuing Install"
fi

# UFW Setup

chmod +x opensuse-ufw-setup.sh
bash opensuse-ufw-setup.sh

# Finishing Up

xmonad --recompile
echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot


