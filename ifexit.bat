@echo off
::If this dosent work read readme.md
goto start2
:start
echo open
:start2
tasklist /FI "IMAGENAME eq Windows Command Processor.exe" 2>NUL | find /I /N "Windows Command Processor.exe">NUL
if "%ERRORLEVEL%"=="0" goto start
echo not open
attrib +h Flashdrive
attrib +h Photos
attrib +h Videos
attrib -h "Enter Password.bat"
exit
