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
