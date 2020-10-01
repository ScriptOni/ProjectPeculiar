cls
@echo off
cls
set W_PATH=C:\Users\admin\NJPHelper
cd %W_PATH%
set cOption=nul
:mainOPtion
echo ========================================
echo ------------ Project Helper ------------
echo Option:
echo [0] Java 			
echo [1] Python  		
echo [2] Kotlin 		
echo [3] Jython
echo [4] Nodejs
echo [5] ToolBuild
echo ========================================
set /p cOption=choice: 
if %cOption% == 0 call Java_Project_Helper.bat
if %cOption% == 1 call Python_Project_Helper.bat
goto mainOPtion
