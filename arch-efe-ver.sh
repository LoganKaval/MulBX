#!/bin/bash
echo "What is the Access Code?"
read acod

sleep 5

if [ "$acod" = "Efes'in Efe'si"];
then 
   chmod +x arch-efe-tree.sh
   bash arch-efe-tree.sh
else
   echo "[        3E_7r_7r_3o_9r     ] Error: Access Code Does Not Qualify"
   echo "[        7R_3u_2i_9n        ] Error: Default Missing In: bash-backs.loader"
fi
