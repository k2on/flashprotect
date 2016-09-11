# flashprotect
This is a program to protect your files on a flashdrive.

How to edit

: FlashProtect File

Goto the FlashProtect file

Find "The content on the flashdrive is only for Your Name and people with permistion from him/her to view or use it."
Edit "Your Name"
Edit "him/her"

Find "if %password%==password goto correct"
Change "password" to the password you want to set

In the folder were the "FlashProtect.bat" is create a folder called Flashdrive

Find "attrib -h Flashdrive"
Under that line of code, copy and paste it for how meany folders you have

Find "attrib +h Flashdrive"
Do the same thing that you did before

:ifexit File

Find "attrib +h Flashdrive"
Do the same thing that you did before

:Done

If you want to take the extra mile, I would convert the bat file to an exe file.
I use "Bat to Exe" : http://www.f2ko.de/en/b2e.php

Up sides : 
You can set a custom file icon without a shortcut file.
Its all compiled together
You can pin it to the taskbar

Down sides :
Some anti-virus softwere might remove it

If you are going to convert it, follow these steps

:ifexit.bat File \/

Find "tasklist /FI "IMAGENAME eq Windows Command Processer.exe" 2>NUL | find /I /N "Windows Command Processer.exe">NUL" "Replace Windows Command Processer.exe". To the name of the file

That is pritty much it
If you have questions DM me on Instagram : max.koon
Or leave a comment
