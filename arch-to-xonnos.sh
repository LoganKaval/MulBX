#!/bin/bash

# Warnings and Beginning
echo "This Will Turn Arch Linux Into XonNOS!"
echo "Exit the Script If your not on Arch or if Your Not in a User Directory!"
echo "You Have Five Seconds to do so"
sleep 7

# Collecting Directories

echo "What is The User Account That You Want the Base Files to Go In?"
echo "The Root Account WILL NOT Work!!!"
read dir

sleep 10

# Installing Software


sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S tty-clock -y
sudo pacman -S chromium-browser -y
sudo pacman -S thunar -y
sudo pacman -S libreoffice -y
sudo pacman -S cheese -y
sudo pacman -S git -y
sudo pacman -S wget -y
sudo pacman -S xmonad -y
sudo pacman -S xmobar -y
sudo pacman -S xterm -y
sudo pacman -S terminator -y
sudo pacman -S featherpad -y
sudo pacman -S nitrogen -y
sudo pacman -S picom -y
sudo pacman -S vim -y
sudo pacman -S neofetch -y
sudo pacman -S ranger -y
sudo pacman -S btop -y
sudo pacman -S dmenu -y
sudo pacman -S qt5ct -y
sudo pacman -S gnome-clocks -y
sudo pacman -S xfce4-power-manager -y
sudo pacman -S nano -y
sudo pacman -S mc -y
sudo pacman -S curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo pacman -S brave-browser -y
sudo pacman -S kde-spectacle -y
sudo pacman -S libghc-xmonad-contrib-dev

# To Install Packages in the Package List
chmod +x arch-packages.sh
bash arch-packages.sh


# Making Directories

mkdir /home/$dir/.config
mkdir /home/$dir/.xmonad
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts
sudo mkdir /usr/share/backgrounds/XonNOS

# Moving Files


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp arch-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/XonNOS

# Allowing Scripts to Have Execute Privileges


sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
sudo chmod +x /etc/XonNOS/scripts/reboot.sh

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
mkdir /home/$dir/.xmonad/scripts
sudo mkdir /etc/XonNOS
sudo mkdir /etc/XonNOS/xmobar
sudo mkdir /etc/XonNOS/scripts
sudo mkdir /usr/share/backgrounds/XonNOS

# Moving Files Again


cp bashrc /home/$dir/.bashrc
sudo cp xmobar.config /etc/XonNOS/xmobar/xmobar.config
cp xmonad.hs /home/$dir/.xmonad/xmonad.hs
sudo cp shutdown.sh /etc/XonNOS/scripts/shutdown.sh
sudo cp reboot.sh /etc/XonNOS/scripts/reboot.sh
sudo xmonad --recompile && xmonad --restart
xmonad --recompile && xmonad --restart
sudo cp neofetch /usr/bin/neofetch
sudo cp arch-os-release /etc/os-release
sudo cp -r backgrounds /usr/share/backgrounds/XonNOS

# Allowing Scripts to Have Execute Privileges Again


sudo chmod +x /etc/XonNOS/scripts/shutdown.sh
sudo chmod +x /etc/XonNOS/scripts/reboot.sh

# Finishing Up

echo "All Done!!!"
echo "I Will Now Reboot!"
sleep 10
sudo reboot
reboot
