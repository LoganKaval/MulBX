#!/bin/bash



echo "This Will Install All Packages that Are Listed!"
echo "Keep a Space Inbetween!"
echo "Type Quit to Leave!"
sleep 7
sudo pacman -Syu
sudo pacman -Syy


echo "What Package Do You Want To Install?"
read paknm


until [ "$paknm" = "quit" ]
do
	echo "What Package(s) Do You Want to Install?"
	echo "You Can List Them With One Space Inbetween Each Package!"
	read paknm

	sudo pacman -S $paknm -y

done

echo "All Done"
echo "[     1.41H_4.14u                ] Finished: 'arch-custom-pak.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-mulbx.sh' script--"
