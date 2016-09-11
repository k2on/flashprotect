@echo off
::If this dosent work read readme.md
title Warning
color 0f
mode con lines=30 cols=180
echo Flashdrive Log - %username% - Got opened program at; %time% %date% >> Flashdrive\log.txt
echo.
echo           ______    ______    ______     _________________     ________________     __________________     _________________       __________________     _____________________
echo          /     /\  /     /\  /     /\   /                /\   /               /\   /                 /\   /                /\     /                 /\   /                    /\
echo         /     / / /     / / /     / /  /     _____      / /  /     _____     / /  /     ______      / /  /_____      _____/ /    /     ______      / /  /     _______________/ /
echo        /     / / /     / / /     / /  /     /\___/     / /  /     /\___/    / /  /     /\____/     / /   \____/     /\____\/    /     /\____/     / /  /     /\______________\/
echo       /     / / /     / / /     / /  /     /_/__/     / /  /     /_/__/    / /  /     / /   /     / /        /     / /         /     / /   /     / /  /     / //           /\
echo      /     /_/_/     /_/_/     / /  /                / /  /    ____     __/ /  /     / /   /     / /        /     / /         /     / /   /     / /  /     / //_____      / /
echo     /                         / /  /     ______     / /  /    /\___/   /\_\/  /     / /   /     / /  ______/     /_/___      /     / /   /     / /  /     /_/_\____/     / /
echo    /                         / /  /     /\____/    / /  /    / /  /   / /    /     / /   /     / /  /                 /\    /     / /   /     / /  /                    / /
echo   /_________________________/ /  /_____/ /   /____/ /  /    / /  /___/ /    /_____/ /   /_____/ /  /_________________/ /   /_____/ /   /_____/ /  /____________________/ /
echo   \_________________________\/   \_____\/    \____\/   \____\/   \___\/     \_____\/    \_____\/   \_________________\/    \_____\/    \_____\/   \____________________\/
echo.
echo                 The content on the flashdrive is only for [Your Name] and people with permistion from him/her to view or use it.
echo                                       The following will be loged and sent to him if there is a problem.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout 1 >nul
color 04

timeout 1 >nul
color 0f

timeout 1 >nul
color 04

timeout 1 >nul
color 0f

timeout 1 >nul
color 04

timeout 1 >nul
color 0f
powershell -Command $pword = read-host "Enter Password " -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt 
		attrib +h .tmp.txt
		set /p password=<.tmp.txt & del .tmp.txt
if %password%==password goto correct
if exist Flashdrive\w1.txt (
del Flashdrive\w1.txt
echo a >> Flashdrive\w2.txt
echo 2nd Wrong %username% %time% %date% >> Flashdrive\log.txt
set /a num=2
goto pw
)
if exist Flashdrive\w2.txt (
del Flashdrive\w2.txt
echo a >> Flashdrive\w3.txt
echo 3rd Wrong %username% %time% %date% >> Flashdrive\log.txt
set /a num=1
goto pw
)
if exist Flashdrive\w2.txt (
del Flashdrive\w3.txt
echo 4th Wrong %username% %time% %date% >> Flashdrive\log.txt
goto sd
)
echo a >> Flashdrive\w1.txt
echo 1st Wrong %username% %time% %date% >> Flashdrive\log.txt
set /a num=3
goto pw
:pw
color 04
title Wrong Password
mode con lines=15 cols=45
echo.
echo.
echo.
echo            #######    #######
echo             #######  #######
echo              ##############
echo               ############
echo                ##########
echo               ############
echo              ##############
echo             #######  #######
echo            #######    #######
echo.
echo %num% more atempts until computer shutsdown
pause >nul
exit
:sd
color 04
sam wrong password! the computer will now shutdown!
echo.
echo.
echo.
echo            #######    #######
echo             #######  #######
echo              ##############
echo               ############
echo                ##########
echo               ############
echo              ##############
echo             #######  #######
echo            #######    #######
echo.
echo    Wrong password for the 4th time.
echo     The computer will now shutdown
timeout 5
shutdown -s -t 1
:correct
color 0a
mode con lines=15 cols=45
del Flashdrive\w1.txt
del Flashdrive\w2.txt
del Flashdrive\w3.txt
attrib -h Flashdrive
attrib -h Photos
attrib -h Videos
attrib +h "Enter Password.bat"
ifexit.vbs
echo Got correct - %username% - %time% %date% >> Flashdrive\log.txt
cls
title Keep this file open
echo.
echo                       #######
echo                      #######
echo                     #######
echo       #######      #######
echo        #######    #######
echo         #######  #######
echo          ##############
echo           ############
echo            ##########
echo             ########
echo              ######
echo.
echo           Password Corect
echo       Press any key to exit
pause >nul
attrib +h Flashdrive
attrib +h Photos
attrib +h Videos
attrib -h "Enter Password.bat"
exit

