


REM Certain files and program in this Application is contributed or developed by Peculiar.org.
REM Copyright © 2020-2021 Peculiar.org All Rights Reserved.

REM The works ("Works") herein refer to all files,program in this Application that are developed by Peculiar.org and that are not released under the terms and conditions of an open source software license. The Information contains of the Works is the exclusive property of Peculiar.org. Any third party shall not modify,crack,decompile or delete files and program contains in this Console Application. The end user of this Application is merely granted to rightfully use the Works and shall not,by himself or through a third party,modify,crack,decompile or delete any basic function program or file contains in this  Application which may cause harm to this Application,including without limitation,file damage,malfunction and instability of Application. The end User shall be liable for all such consequences result from the abovementioned conduct. Peculiar.org reserves the right to claim compensations if such conduct causes damage to Peculiar.org. No futher right rights is granted hereunder,include but limited to,distribution, reproduction,modification and/or transmission. Any other usage of the Works shall be subject to the written consent of Peculiar.org.
REM For all te relevant software bundled with or pre-installed on this Application purchased by you,the usage of such relevant software by you shall be subject to such supplier/licensor's copyright terms and conditions.

@echo off
:: --------------------------------Setup configuration ---------------------------------------
::============================================================================================
set APPLICATION_TITLE=Peculiar~ NJP Helper
set APPLICATION_PATH=C:\Users\admin\NJPHelper
set WORKING_PATH=C:/Users/admin/Desktop
set WORKING_ENV=Peculiar
set EDITOR_CHOICE=sublime

set ADD_LOGO=C:\Users\admin\NJPHelper\Assets\logos
set ADD_VIEWS_PACKAGE=%APPLICATION_PATH%\Assets\views 
set ADD_AUTH_PACKAGE=%APPLICATION_PATH%\Assets\views\auth
set ADD_MODELS_PACKAGE=%APPLICATION_PATH%\Assets\models 
set ADD_CONTROLLERS_PACKAGE=%APPLICATION_PATH%\Assets\controllers 
set ADD_DATABASES_PACKAGE=%APPLICATION_PATH%\Assets\databases 
set ADD_INTERFACES_PACKAGE=%APPLICATION_PATH%\Assets\interfaces 

set LOGO=assets\logos
set PACKAGE_VIEWS=src\views
set PACKAGE_AUTH=src\views\auth
set PACKAGE_MODELS=src\models
set PACKAGE_CONTROLLERS=src\controllers
set PACKAGE_DATABASES=src\databases
set PACKAGE_INTERFACES=src\interfaces
::============================================================================================
:: -------------------------------------------------------------------------------------------
rem setting title
title %APPLICATION_TITLE%
rem moving to the working parent directory
cd %WORKING_PATH%
rem making the working directory
mkdir %WORKING_ENV%
cls
:main
rem moving to the working directory
cd %WORKING_PATH%/%WORKING_ENV%
rem removing the error files if any
rmdir /S /Q dist && del Copyright lib
cls
color A
echo.
echo 		   ***************************************************************************************
echo 		 *** **************** ** Date: %date%          ** Owner: Mark Wayne Menorca          ***
echo 		 *** ******    ****** ** Time: %time%         **     [Private Property]             ***
echo 		 *** ******    ****** **********************************************************************
echo 		 *** ******    ******     **    **      ** ****** **  ** ***** **    ****** ***** ******* **
echo 		 *** ****************    ****  **      ** **  ** **  ** **    **    **  ** **    **   **  **
echo 		 *** ********           ** ** ** **   ** ****** ****** ***** **    ****** ***** *******   **
echo 		 *** ********          **  **** **   ** **     **  ** **    **    **     **    **  **     **
echo 		 *** ********         **   *** ******* **     **  ** ***** ***** **     ***** **   **     **            
echo 		 *******************************************************************************************
echo 		 -------------------------------------------------------------------------------------------
echo  		 *** commands:                     ********************************************************* 
echo   		 ***  [ff]    Find Files/Folders   **************************                      *********
echo   		 ***  [ctp]   Create Project       *************************                      **********
echo   		 ***  [ctj]   Create Java File     ************************                      ***********
echo   		 ***  [rc]    Recompile Project    ***********************       ********       ************
echo   		 ***  [xr]    Explore Project      **********************       ********       *************
echo   		 ***  [sqt3]  Open Sqlite Database *********************       ********       **************
echo   		 ***  [runj]  Run Java Archive     ********************       ********       ***************
echo   		 ***  [showj] Show Jar Content     *******************                      ****************
echo   		 ***  [delp]  Delete Project       ******************                      *****************
echo   		 ***  [delf]  Delete File          *****************       *********************************
echo   		 ***  [lsp]   List Projects        ****************       **********************************
echo   		 ***  [e]     Open Editor          ***************       ***********************************
echo   		 ***  [cmd]   Open Command Prompt  **************       ************************************
echo   		 ***  [kill]  Kill Task            *************       *************************************
echo   		 ***  [about] About NJPHelper      ********************************************************* 
echo 		 *** --------------------------    *********************************************************
echo 		   ***************************************************************************************               
set choice=nul 
set /p choice=Peculiar~:%username%:[NJPHelper]:: 
echo. 
if %choice% == ff     goto find 
if %choice% == ctp    goto createProject
if %choice% == ctj    goto createFile
if %choice% == rc     goto recompile
if %choice% == xr     goto explore
if %choice% == runj   goto runjar
if %choice% == sqt3 goto databaseManager
if %choice% == showj  goto showjar
if %choice% == delp   goto delproject
if %choice% == delf   goto delfile
if %choice% == lsp    goto listproject
if %choice% == e     goto editor
if %choice% == cmd    goto CMD
if %choice% == kill   goto killtask
if %choice% == about  goto about
if %choice% == option goto optionMenu
cls
goto main
:optionMenu
set W_PATH=C:\Users\admin\NJPHelper
cd %W_PATH%
call Option.bat
goto eof
Rem ==============================================================================================================
REM Find File/Folder Command SubRoutine
:find
cls
color A
echo.
set /p object=Folder/File-name: 
echo Result found for '%object%':
dir /B /S *%object%*
echo.
goto return_menu
Rem ==============================================================================================================
REM Create Project Command SubRoutine
:createProject
cls
color A
echo.
set /p projectname=[ ================ ]Project name: 
set /p packagename=[ ================ ]Main package: 
set /p mainclass=[ ================ ]Main-class: 
set /p lib=[ ================ ]Class-Path: 
::set /p editor= Editor: 
echo.
:return_create
set choice=nul 
set /p choice=[ ================ ]proceed?[y/n]:  
if %choice% == y goto yes_proceed
if %choice% == n goto main
goto return_create
:yes_proceed
rem deleting old project
rmdir /S /Q %projectname%
rem making new project 
mkdir %projectname% 
rem moving to the project directory
cd %projectname%
rem making source,lib and assets folder
mkdir src lib assets\logos
rem copying Copyright to the project directory
copy %APPLICATION_PATH%\Copyright .
rem copying jar files to the project directory
copy %APPLICATION_PATH%\Jars\*.jar .\lib
rem ---------------------------------------------------------------------------------------------------------------
cls
echo ==================================== Templates ======================================
echo [0] Main package with Model-View-Controller-Database-Interface               
echo [1] Main package with Model-View-Controller-Interface                         
echo [2] Main Package with View and Database                              
echo [3] Main Package with Database only                                           
echo [4] Main package with View only                                                 
echo [5] Main package Only                                                         
echo =====================================================================================
echo.
:compilation
set compiletype=nul
set /p compiletype=[ ================ ]Compilation Type: 
if %compiletype% == 0 goto c0
if %compiletype% == 1 goto c1
if %compiletype% == 2 goto c2
if %compiletype% == 3 goto c3
if %compiletype% == 4 goto c4
if %compiletype% == 5 goto c5
goto compilation
:c0
echo Compile package via Main package with Model-View-Controller-Database-Interface
rem making package in the source folder
mkdir src\%packagename% src\views\auth src\databases src\models src\controllers src\interfaces
rem copying 
copy %ADD_VIEWS_PACKAGE% %PACKAGE_VIEWS%
copy %ADD_AUTH_PACKAGE% %PACKAGE_AUTH%
copy %ADD_MODELS_PACKAGE% %PACKAGE_MODELS%
copy %ADD_CONTROLLERS_PACKAGE% %PACKAGE_CONTROLLERS%
copy %ADD_DATABASES_PACKAGE% %PACKAGE_DATABASES%
copy %ADD_INTERFACES_PACKAGE% %PACKAGE_INTERFACES%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample1.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask0
set choice0=nul
set /p choice0=[ ================ ]compile [y/n]:  
if %choice0% == y goto yes_compile0
if %choice0% == n goto return_menu
goto choice_ask0
sqlite.jar
:yes_compile0
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets    
set c0packages=src/%packagename%/*.java src/views/*.java src/views/auth/*.java  src/models/*.java src/controllers/*.java src/databases/*.java src/interfaces/*.java                             
javac -d . -cp lib %c0packages%  || goto compilation_error
set classes=com/%packagename%/*.class com/models/*.class com/controllers/*.class com/views/*.class com/views/auth/*.class com/databases/*.class com/interfaces/*.class
goto pass
:c1
echo Compile package via Main package with Model-View-Controller-Interface                                         
mkdir src\%packagename% src\views\auth  src\models src\controllers src\interfaces


copy %ADD_AUTH_PACKAGE% %PACKAGE_AUTH%
copy %ADD_VIEWS_PACKAGE% %PACKAGE_VIEWS%
copy %ADD_MODELS_PACKAGE% %PACKAGE_MODELS%
copy %ADD_CONTROLLERS_PACKAGE% %PACKAGE_CONTROLLERS%
copy %ADD_INTERFACES_PACKAGE% %PACKAGE_INTERFACES%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample2.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask1
set choice1=nul
set /p choice1=[ ================ ]compile [y/n]:  
if %choice1% == y goto yes_compile1
if %choice1% == n goto return_menu
goto choice_ask1
:yes_compile1
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets

javac -d . -cp lib src/%packagename%/*.java src/views/*.java src/views/auth/*.java src/models/*.java src/controllers/*.java src/interfaces/*.java || goto compilation_error
set classes=com/%packagename%/*.class com/models/*.class com/controllers/*.class com/views/*.class com/views/auth/*.class com/interfaces/*.class

goto pass
:c2
echo Compile package via Main Package with View and Database                                             
mkdir src\%packagename% src\views src\databases
copy %ADD_VIEWS_PACKAGE% %PACKAGE_VIEWS%
copy %ADD_DATABASES_PACKAGE% %PACKAGE_DATABASES%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample3.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask2
set choice2=nul
set /p choice2=[ ================ ]compile [y/n]:  
if %choice2% == y goto yes_compile2
if %choice2% == n goto return_menu
goto choice_ask2
:yes_compile2
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets
javac -d . -cp lib src/%packagename%/*.java src/views/*.java src/databases/*.java || goto compilation_error
set classes=com/%packagename%/*.class com/views/*.class com/databases/*.class

goto pass
:c3
echo Compile package via Main Package with Database only                                                
mkdir src\%packagename% src\databases
copy %ADD_DATABASES_PACKAGE% %PACKAGE_DATABASES%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample4.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask3
set choice3=nul
set /p choice3=[ ================ ]compile [y/n]:  
if %choice3% == y goto yes_compile3
if %choice3% == n goto return_menu
goto choice_ask3
:yes_compile3
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets
javac -d . -cp lib src/%packagename%/*.java src/databases/*.java || goto compilation_error
set classes=com/%packagename%/*.class com/databases/*.class

goto pass
:c4
echo Compile package via Main package with View only                                                     
mkdir src\%packagename% src\views
copy %ADD_VIEWS_PACKAGE% %PACKAGE_VIEWS%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample5.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask4
set choice4=nul
set /p choice4=[ ================ ]compile [y/n]:  
if %choice4% == y goto yes_compile4
if %choice4% == n goto return_menu
goto choice_ask4
:yes_compile4
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets
javac -d . -cp lib src/%packagename%/*.java src/views/*.java || goto compilation_error
set classes=com/%packagename%/*.class com/views/*.class

goto pass
:c5
echo Compile package via  Main package Only
mkdir src\%packagename%
copy %ADD_LOGO% %LOGO%
echo package com.%packagename%; > src/%packagename%/%mainclass%.java
type %APPLICATION_PATH%\Assets\mainSample\MainSample6.java >> src/%packagename%/%mainclass%.java
echo Main-Class: com.%packagename%.%mainclass% > manifest.mf
echo Class-Path: %lib% >> manifest.mf
start %EDITOR_CHOICE% src/%packagename%/%mainclass%.java
echo.
:choice_ask5
set choice5=nul
set /p choice5=[ ================ ]compile [y/n]:  
if %choice5% == y goto yes_compile5
if %choice5% == n goto return_menu
goto choice_ask5
:yes_compile5
echo Start Compiling...
mkdir dist
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets
echo ...................
javac -d . -cp lib src/%packagename%/*.java || goto compilation_error
set classes=com/%packagename%/*.class
echo ...................
goto pass
:pass
rem ---------------------------------------------------------------------------------------------------------------
copy *.sqlite dist
echo done
echo ==========================================================================================
echo ================================ [ Project Stracture ] ===================================
echo ==========================================================================================
echo.
tree /F .
echo ==========================================================================================
echo ================= [End Compiling Classes Start Archiving Java Project ] ==================
echo ==========================================================================================
echo.
jar -cvfm dist/%projectname%.jar manifest.mf %classes% Copyright || rmdir /S /Q %projectname% || goto compilation_error	
echo.
echo [Output] it will start a new process...
echo.
set cmd=start "%projectname%" cmd /K
%cmd% java -jar dist/%projectname%.jar || goto compilation_error
goto compilation_success
Rem ==============================================================================================================
REM Create File Command SubRoutine
:createFile
cls
color A
echo List of All Files: 
dir /B /S /AA .
echo.
set /p fname=[ ================ ]Enter File Name: 
set /p fpath=[ ================ ]Enter File Path:
echo creating File...
echo.
start %EDITOR_CHOICE% %fpath%/%fname%.java
echo.
goto return_menu
Rem ==============================================================================================================
REM Recompile Project Command SubRoutine
:recompile
cls
color A
echo.
echo Project List:
echo.
dir /AD /B /ON /-C
echo.
set /p projectname=[ ================ ]Project Name: 
set /p packagename=[ ================ ]Main Package: 
cd %projectname%
copy %APPLICATION_PATH%\Copyright
copy %APPLICATION_PATH%\*.jar lib
mkdir dist\lib && copy lib dist\lib
mkdir dist\assets && copy assets dist\assets
cls
rem -------------------------------------------------------------------------------------------------

echo ==================================== Templates ======================================
echo [0] Main package with Model-View-Controller-Database-Interface               
echo [1] Main package with Model-View-Controller-Interface                         
echo [2] Main Package with View and Database                              
echo [3] Main Package with Database only                                           
echo [4] Main package with View only                                                 
echo [5] Main package Only                                                         
echo =====================================================================================
echo.
:compilation1
set compiletype1=nul
set /p compiletype1=[ ================ ]Compilation Type: 
if %compiletype1% == 0 goto c00
if %compiletype1% == 1 goto c11
if %compiletype1% == 2 goto c22
if %compiletype1% == 3 goto c33
if %compiletype1% == 4 goto c44
if %compiletype1% == 5 goto c55
goto compilation1
:c00
echo Compile package via Main package with Model-View-Controller-Database...   
echo Start Compiling...
echo ..................................................................................
javac -d . -p lib src/%packagename%/*.java src/views/*.java src/views/auth/*.java src/models/*.java src/controllers/*.java src/databases/*.java src/interfaces/*.java || goto compilation1_error
set classes=com/%packagename%/*.class com/models/*.class com/controllers/*.class com/views/*.class com/views/auth/*.class com/databases/*.class com/interfaces/*.class
echo ..................................................................................
goto pass1
:c11
echo Compile package via Main package with Model-View-Controller...                                
echo Start Compiling...
echo ..................................................................................
javac -d . -p lib src/%packagename%/*.java src/views/*.java src/views/auth/*.java src/models/*.java src/controllers/*.java src/interfaces/*.java || goto compilation1_error
set classes=com/%packagename%/*.class com/models/*.class com/controllers/*.class com/views/*.class com/views/auth/*.class com/interfaces/*.class
echo ..................................................................................
goto pass1
:c22
echo Compile package via Main Package with View and Database...
echo Start Compiling...
echo ..................................................................................
javac -d . -p lib src/%packagename%/*.java src/views/*.java src/databases/*.java || goto compilation1_error
set classes=com/%packagename%/*.class com/views/*.class com/databases/*.class
echo ..................................................................................

goto pass1
:c33
echo Compile package via Main Package with Database only...                                         
echo Start Compiling...
echo ..................................................................................
javac -d . -p lib src/%packagename%/*.java src/databases/*.java || goto compilation1_error
set classes=com/%packagename%/*.class com/databases/*.class
echo ..................................................................................

goto pass1
:c44
echo Compile package via Main package with View only...                                             
echo Start Compiling...
echo ..................................................................................

javac -d . -p lib src/%packagename%/*.java src/views/*.java || goto compilation1_error
set classes=com/%packagename%/*.class com/views/*.class
echo ..................................................................................

goto pass1
:c55
echo Compile package via  Main package Only...
echo Start Compiling...
echo ..................................................................................
javac -d . -p lib src/%packagename%/*.java || goto compilation1_error
set classes=com/%packagename%/*.class
echo ..................................................................................
goto pass1
rem ----------------------------------------------------------------------------------------------------------------
:pass1
copy *.sqlite dist
echo done
echo ==========================================================================================
echo ================ [End Compiling Classes Start Archiving Java Project ] ===================
echo ==========================================================================================
echo.
jar -cvfm dist/%projectname%.jar manifest.mf %classes% Copyright || rmdir /S /Q %projectname%  || goto compilation1_error
echo.
echo ==========================================================================================
echo ================================ [ Project Stracture ] ===================================
echo ==========================================================================================
echo.
tree /F .
echo.
echo [ ==== Output ==== ] it will start a new process...
echo.
set cmd=start "%projectname%" cmd /K
%cmd% java -jar dist/%projectname%.jar  || goto compilation1_error
goto compilation1_success

Rem ==============================================================================================================
REM Expore Project Command SubRoutine
:explore
cls
color A
echo.
echo Project List:
dir /AD /B /ON /-C
echo.
set /p projectname[ ================ ]=project-name: 
:return
set choice=nul
set /p choice=[ ================ ]open? [y/n]:  
if %choice% == y goto yes_explore
if %choice% == n goto return_menu
goto return
:yes_explore
echo opening..%projectname%
set homepath=C:\Users\admin\Desktop\Peculiar
start explorer %homepath%\%projectname% || goto success
goto return_menu
Rem ==============================================================================================================
REM Run Java Archive Command SubRoutine
:runjar
cls
color A
echo Available:
echo.
dir /B /S *jar*
echo.
set /p jar=[ ================ ]Jar File: 
set /p jarlocation=[ ================ ]Path: 
cd %jarlocation%
set cmd=start "Running..%jarlocation%\%jar%"/MIN cmd /K
%cmd% java -jar %jarlocation%\%jar% || goto error
echo.
goto success 
Rem ==============================================================================================================
REM Open Sqlite Database Command SubRoutine
:databaseManager
cls
color A
echo Available:
echo.
dir /B /S *.sqlite*
echo.
set /p db_name=[ ================ ]database-name: 
start %APPLICATION_PATH%\sqlite3.exe %db_name%
goto return_menu
Rem ==============================================================================================================
REM Show Java Archive Content Command SubRoutine
:showjar
cls
color A
echo.
echo Available:
echo.
dir /B /S *jar*
echo.
set /p jarlocation=[ ================ ]Path:  
start cmd /K jar -tf %jarlocation%
echo.
goto return_menu
Rem ==============================================================================================================
REM Delete Project Command SubRoutine
:delproject
cls
color A
echo List of Project Path:
dir /B /AD .
echo.
set /p projectname=[ ================ ]Project-Name: 
echo Deleting Project...
echo.
rmdir /S %projectname%
echo.
goto return_menu
Rem ==============================================================================================================
REM Delete File Command SubRoutine
:delfile
cls
color A
echo List of All Files: 
dir /B /S /AA .
echo.
set /p fpath=[ ================ ]File-Path:
echo Deleting File...
del /p %fpath%
echo.
goto return_menu
Rem ==============================================================================================================
REM List All Projects Command SubRoutine
:listproject
cls
color A
echo.
echo Project List:
echo.
dir /AD /B /ON /-C
echo.
goto return_menu
Rem ==============================================================================================================
REM EDITOR_CHOICE Command SubRoutine
:editor
start %EDITOR_CHOICE%
goto main
Rem ==============================================================================================================
:CMD
start cmd
goto main
Rem ==============================================================================================================
REM Kill Task Command SubRoutine
:killtask
cls
color A
echo.
TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"
echo. 
set /p processID=[ ================ ]Enter Process ID: 
:return_ask
set choice=nul 
set /p choice=[ ================ ]kill task?[y/n]:  
if %choice% == y goto yes_kill
if %choice% == n goto main
goto return_ask
:yes_kill
TASKKILL /PID %processID%
goto main
Rem ==============================================================================================================
REM About Command SubRoutine
:about
cls
color A
echo.
type %APPLICATION_PATH%\Copyright
goto return_menu
Rem ==============================================================================================================
REM Return Success SubRoutine
:success
echo.
echo ==========================================================================================
echo =============================== [Processing Completed ] ==================================
echo ==========================================================================================
goto return_menu
Rem ==============================================================================================================
REM Return Error SubRoutine
:error
color 4
echo.
echo ==========================================================================================
echo ================================ [Processing Failed! ] ===================================
echo ==========================================================================================
goto return_menu
Rem ==============================================================================================================
REM Return Compilation Success SubRoutine
:compilation_success
color A
echo.
echo ==========================================================================================
echo =============================== [Compiling Completed ] ==================================
echo ==========================================================================================
goto ask
Rem ==============================================================================================================
REM Return Compilation Error SubRoutine
:compilation_error
color 4
echo.
echo ==========================================================================================
echo ================================ [Compiling Failed! ] ===================================
echo ==========================================================================================
goto ask
Rem ==============================================================================================================
REM Return Compilation Success SubRoutine
:compilation1_success
color A
echo.
echo ==========================================================================================
echo =============================== [Compiling Completed ] ==================================
echo ==========================================================================================
goto ask1
Rem ==============================================================================================================
REM Return Compilation Error SubRoutine
:compilation1_error
color 4
echo.
echo ==========================================================================================
echo ================================ [Compiling Failed! ] ===================================
echo ==========================================================================================
goto ask1



:ask
set compile_re=nul
set /p compile_re=[ ================ ]recompile [y/n]: 
if %compile_re% == y goto compilation_re
if %compile_re% == n goto success
goto ask
:compilation_re
set compiletype_re=nul
set /p compiletype_re=[ ================ ]Compilation Type: 
if %compiletype_re% == 0 goto yes_compile0
if %compiletype_re% == 1 goto yes_compile1
if %compiletype_re% == 2 goto yes_compile2
if %compiletype_re% == 3 goto yes_compile3
if %compiletype_re% == 4 goto yes_compile4
if %compiletype_re% == 5 goto yes_compile5
goto ask

:ask1
set compile_re1=nul
set /p compile_re1=[ ================ ]recompile [y/n]: 
if %compile_re1% == y goto compilation_re1
if %compile_re1% == n goto success
goto ask1
:compilation_re1
set compiletype_re1=nul
set /p compiletype_re1=[ ================ ]Compilation Type: 
if %compiletype_re1% == 0 goto c00
if %compiletype_re1% == 1 goto c11
if %compiletype_re1% == 2 goto c22
if %compiletype_re1% == 3 goto c33
if %compiletype_re1% == 4 goto c44
if %compiletype_re1% == 5 goto c55
goto ask1 


Rem ==============================================================================================================
REM Return to Menu SubRoutine
:return_menu
set choice=nul 
set /p choice=[ ================ ]return Menu[y]:  
if %choice% == y goto main
goto return_menu


:: ===============================================================================================
:: ========================================   RESERVE    =========================================
:: ===============================================================================================

REM :home
REM cls
REM color A
REM echo.
REM echo Going back to Home Directory...
REM ping -n 2 127.0.0.1 >nul
REM echo ========================================================================================= 
REM cd C:/Users/admin/Desktop/Peculiar && cd
REM echo ========================================================================================= 
REM cls
REM goto main           