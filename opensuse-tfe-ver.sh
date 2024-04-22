#!/bin/bash

echo "What User Are You Logged Into?"
echo "Reminder Root Will NOT Work!!!"
read usrdir

sleep 7


rounds = 1
until [ "$rounds" = 3 ]
do
	echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
	echo "Fixing Version Code"
	echo "One Moment..."
	sleep 0.3s
	(( rounds ++ ))
done

echo "Resolved"

cp tfe-bashrc /home/$usrdir/.bashrc
sudo cp tfe-bashrc /etc/skel/.bashrc
sudo cp opensuse-os-release
sudo cp opensuse-tfe-install-type /etc/MulBX/install-type
sudo zypper refresh
sudo zypper update
sudo zypper install gdm
sudo zypper install FreeCAD
sudo zypper install PrusaSlicer
sudo zypper install cheese
sudo zypper install curl git wget
sudo zypper remove firefox
sudo zypper autoremove
echo "[     1.41H_4.14u                ] Finished: 'opensuse-tfe-ver.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'opensuse-to-mulbx.sh' script--"