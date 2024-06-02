#!/bin/bash

echo "What User Are You Logged Into?"
echo "Reminder Root Will NOT Work!!!"
read usrdir

sleep 7


rounds = 1
until [ "$rounds" = 5 ]
do
	echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
	echo "Fixing Version Code"
	echo "One Moment..."
	sleep 0.3s
	(( rounds ++ ))
done

echo "Done!"
sudo pacman -Syu
sudo pacman -Syy
sudo pacman -S ly
sudo systemctl enable ly
sudo systemctl disable gdm
sudo systemctl disable sddm
sudo systemctl disable lightdm
sudo pacman -S ufw
sudo ufw status
sudo ufw enable
sudo ufw deny 22
sudo ufw allow 80
sudo ufw allow 443
cd ..
cd ..

sudo cp config-files/install-type/azarch-install-type /etc/MulBX/install-type
sudo cp config-files/os-release/azarch-os-release /etc/os-release
nitrogen --set-auto /usr/share/backgrounds/MulBX/minimal_mountians.png
sudo cp config-files/install-type/azarch-install-type /etc/MulBX/bac-files/install-type
sudo cp config-files/os-release/azarch-os-release /etc/MulBX/bac-files/os-release
echo "[     1.41H_4.14u                ] Finished: 'azarch-ver.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-mulbx.sh' script--"
