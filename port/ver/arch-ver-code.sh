#!/bin/bash

echo "What Version Code Do You Have?"
read vcode

if [ "$vcode" = "v141.Mango" ];
then
     chmod +x port/ver/arch-mango-ver.sh
     bash port/ver/arch-mango-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'arch-ver-code.sh'  script--"
     echo "[     9.19M_1.9a_1.5n_1.0g_7.0o] Starting: 'arch-mango-ver.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi


if [ "$vcode" = "shhh_XonNOS" ];
then
     chmod +x port/ver/arch-xonnos-ver.sh
     bash port/ver/arch-xonnos-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'arch-ver-code.sh'  script--"
     echo "[     9.19M_1.9a_1.5n_1.0g_7.0o] Starting: 'arch-xonnos-ver.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi


if [ "$vcode" = "AZarch" ];
then
     chmod +x port/ver/azarch-ver.sh
     bash port/ver/azarch-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'arch-ver-code.sh'  script--"
     echo "[     9.19M_1.9a_1.5n_1.0g_7.0o] Starting: 'azarch-ver.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi


if [ "$vcode" = "EFE" ];
then
     chmod +x port/ver/arch-efe-ver.sh
     bash port/verarch-efe-ver.sh
     echo "[     1.41H_4.14u                ] Finished: 'arch-ver-code.sh'  script--"
     echo "[     9.19M_1.9a_1.5n_1.0g_7.0o] Starting: 'arch-efe-ver.sh' script--"
     exit

else
     echo "[     4.14A_12.0l_19.0a_7.0_n_3.13a_14.0u_9.0n_3.0a_10.0h  ] Not Version Code VCode--"
fi
