#!/bin/bash

echo "What Version Code Do You Have?"
read vcode


if [ "$vcode" = "shhh_XonNOS" ];
then
     chmod +x debian-xonnos-ver.sh
     bash debian-xonnos-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'debian-ver-code.sh'  script--"
     echo "[     9.19M_1.9a_1.5n_1.0g_7.0o] Starting: 'debian-xonnos-ver.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi
