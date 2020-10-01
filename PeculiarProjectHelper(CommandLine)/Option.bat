cls
@echo off
cls
set W_PATH=C:\Users\admin\NJPHelper
cd %W_PATH%
set cOption=nul
:mainOPtion
echo ========================================
echo [0] Java Project Helper
echo [1] Python Project Helper
echo ========================================
set /p cOption=choice: 
if %cOption% == 0 call Java_Project_Helper.bat
if %cOption% == 1 call Python_Project_Helper.bat
goto mainOPtion
