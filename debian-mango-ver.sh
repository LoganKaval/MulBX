#!/bin/bash

rounds = 1
until [ "$rounds" = 19 ]
do
	echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
	echo "Fixing Version Code"
	echo "One Moment..."
	sleep 0.3s
	(( rounds ++ ))
done

echo "Done!"
sudo apt update
sudo apt upgrade
sudo apt install ufw
sudo ufw status
sudo ufw enable
sudo ufw deny 22
sudo ufw allow 80
sudo ufw allow 443
sudo apt install freecad
sudo apt install prusa-slicer
sudo apt install libreoffice
sudo apt install gimp
sudo apt install kdenlive
sudo cp mango-install-type /etc/MulBX/install-type
echo "[     1.41H_4.14u                ] Finished: 'arch-mango-ver.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-mulbx.sh' script--"
