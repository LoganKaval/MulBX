#!/bin/bash

echo "What Version Code Do You Have?"
read vcode

if [ "$vcode" = "v141.Mango" ];
then
     chmod +x arch-mango-ver.sh
     bash arch-mango-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'arch-ver-code.sh'  script--"
     echo "[     3.13A_1.41l_4.14l_1.9a_7.0h] Continuing: 'arch-to-mulbx.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi




