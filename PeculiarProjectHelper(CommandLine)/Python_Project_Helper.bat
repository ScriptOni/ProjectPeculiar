REM Certain files and program in this Application is contributed or developed by Peculiar.org.
REM Copyright © 2020-2021 Peculiar.org All Rights Reserved.

REM The works ("Works") herein refer to all files,program in this Application that are developed by Peculiar.org and that are not released under the terms and conditions of an open source software license. The Information contains of the Works is the exclusive property of Peculiar.org. Any third party shall not modify,crack,decompile or delete files and program contains in this Console Application. The end user of this Application is merely granted to rightfully use the Works and shall not,by himself or through a third party,modify,crack,decompile or delete any basic function program or file contains in this  Application which may cause harm to this Application,including without limitation,file damage,malfunction and instability of Application. The end User shall be liable for all such consequences result from the abovementioned conduct. Peculiar.org reserves the right to claim compensations if such conduct causes damage to Peculiar.org. No futher right rights is granted hereunder,include but limited to,distribution, reproduction,modification and/or transmission. Any other usage of the Works shall be subject to the written consent of Peculiar.org.
REM For all te relevant software bundled with or pre-installed on this Application purchased by you,the usage of such relevant software by you shall be subject to such supplier/licensor's copyright terms and conditions.

@echo off
set WDIR=C:\Users\admin\Desktop\PeculiarPython
set EDIR=C:\Users\admin\NJPHelper
set EDITOR=notepad++
cd %WDIR%
rmdir /Q /S app database files lib
del COPYRIGHT README main.py
cls
set /p app_name=Application_Name: 
rmdir /Q /S %app_name% 
mkdir %app_name% && cd %app_name%
mkdir app files test lib database
echo > README  && echo  > COPYRIGHT
echo > app/init.py
start %EDITOR% main.py
cd %WDIR%
rmdir /Q /S app database files lib
del COPYRIGHT README main.py
cd %EDIR%
call Option.bat
