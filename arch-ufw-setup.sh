#!/bin/bash


echo "Setting Up FireWall:"

sudo ufw status
sudo ufw enable
sudo ufw allow 433
sudo ufw allow 80
sudo ufw limit 20
sudo ufw allow 313
sudo ufw allow 141
sudo ufw enable 

echo "UFW Almost Done:"

sudo ufw status

echo "[     1.41H_4.14u                ] Finished: 'arch-ufw-setup.sh'  script--"
echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: "arch-to-mulbx.sh script--"
