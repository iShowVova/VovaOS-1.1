@echo off
:1
cls
color 17
title Error 0x01200 - Bg.exe not found
mode con: lines=42 cols=119
echo The %date% at %time% Norlex 1.2 crashed because the error 0x01200 is occuring. >>crashreport.txt

:2
cls
echo.
echo.
echo Crash Report
echo.
echo Error 0x01200: Norlex 1.2 can't found external command Bg.exe.
echo Do you want start recovery ?
echo Type 1 for yes
echo Type 2 for exit
echo type 3 for reset
set /P us=Choice:
if %us% == 1 call Norlex/System32/Recovery/recovery.bat
if %us% == 2 exit
if %us% == 3 call Restart.bat
if not %us% == 1 goto :2
if not %us% == 2 goto :2
if not %us% == 3 goto :2
