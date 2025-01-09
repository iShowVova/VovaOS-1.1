@echo off
cls
color 07
setlocal EnableDelayedExpansion EnableExtensions
title BIOS Setup Utility
mode con: lines=42 cols=119

:cfg
	sound play Norlex\Sounds\Bios.wav
	set "version=1.1.0"
	set "kernel_version=0.2.0"
	cls
	
	< Norlex\System32\BIOS\Config\cfg.set (
	set /p null=
	set /p st=
	set /p nd=
	set /p rd=
	set /p th=
	)
	

:winver
	ver | find /i "Windows 2000" >nul
	if %errorlevel% == 0 set winver=Windows 2000

	ver | find /i "XP" > nul
	if %errorlevel% == 0 set winver=Windows XP

	ver | find /i "version 6.0." >nul
	if %errorlevel% == 0 set winver=Windows Vista

	ver | find /i "version 6.1." >nul
	if %errorlevel% == 0 set winver=Windows 7

	ver | find /i "version 6.2." >nul
	if %errorlevel% == 0 set winver=Windows 8

	ver | find /i "version 6.3." >nul
	if %errorlevel% == 0 set winver=Windows 8.1

	ver | find /i "version 10.0." >nul
	if %errorlevel% == 0 set winver=Windows 10
	

:BIOS.Main
	bg cursor 0
	Color 71
	echo.
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г  Use Mouse                   Г
	echo Г  System Time:                                                                       Г                              Г
	echo Г  System Date:                                                                       Г                              Г
	echo Г  Language:                            [English]                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	batbox /g 1 2 /c 0x71 /d "Main"
	batbox /g 9 2 /c 0x1f /d "Advanced"
	batbox /g 21 2 /c 0x1f /d "Power"
	batbox /g 29 2 /c 0x1f /d "Boot" 
	batbox /g 37 2 /c 0x1f /d "Save&Exit"
	batbox /g 3 13 /c 0x71 /d " System Information"
	batbox /g 40 6 /c 0x71 /d "[%time:~1,2%%time:~3,2%:%time:~6,2%]"
	batbox /g 40 7 /c 0x71 /d "[%Date%]"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 3 13 22 13 /h 17 71 71 71 71 7f /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	if %ERRORLEVEL% == 6 goto :BIOS.SysInfo
	
	goto :BIOS.Main
	
:BIOS.Advanced
	bg cursor 0
	Color 71
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г  Use Mouse                   Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	batbox /g 1 2 /c 0x1f /d "Main"
	batbox /g 9 2 /c 0x71 /d "Advanced"
	batbox /g 21 2 /c 0x1f /d "Power"
	batbox /g 29 2 /c 0x1f /d "Boot" 
	batbox /g 37 2 /c 0x1f /d "Save&Exit"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 /h 71 17 71 71 71 /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	

:BIOS.Power
	bg cursor 0
	Color 71
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г  Use Mouse                   Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	batbox /g 1 2 /c 0x1f /d "Main"
	batbox /g 9 2 /c 0x1f /d "Advanced"
	batbox /g 21 2 /c 0x71 /d "Power"
	batbox /g 29 2 /c 0x1f /d "Boot" 
	batbox /g 37 2 /c 0x1f /d "Save&Exit"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 /h 71 71 17 71 71 /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	

:BIOS.Boot
	bg cursor 0
	Color 71
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                                                                     Г                              Г
	echo Г ФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФ Г  Use Mouse                   Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	batbox /g 1 2 /c 0x1f /d "Main"
	batbox /g 9 2 /c 0x1f /d "Advanced"
	batbox /g 21 2 /c 0x1f /d "Power"
	batbox /g 29 2 /c 0x71 /d "Boot" 
	batbox /g 37 2 /c 0x1f /d "Save&Exit"
	batbox /g 2 4 /c 0x70 /d "Boot Settings"
	batbox /g 2 6 /c 0x71 /d " Boot Settings Configuration"
	
	batbox /g 2 8 /c 0x71 /d "1st Boot Device                    [%st%]"
	batbox /g 2 9 /c 0x71 /d "2nd Boot Device                    [%nd%]"
	batbox /g 2 10 /c 0x71 /d "3rd Boot Device                    [%rd%]"
	batbox /g 2 11 /c 0x71 /d "4th Boot Device                    [%th%]"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 2 6 30 6 2 8 60 8 2 9 60 9 2 10 60 10 2 11 60 11 /h 71 71 71 17 71 7f 7f 7f 7f 7f /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	if %ERRORLEVEL% == 7 goto :BIOS.BootSC
	if %ERRORLEVEL% == 8 goto :BIOS.BootSC
	if %ERRORLEVEL% == 9 goto :BIOS.BootSC
	if %ERRORLEVEL% == 10 goto :BIOS.BootSC
	if %ERRORLEVEL% == 11 goto :BIOS.BootSC
	

:BIOS.Save&Exit
	bg cursor 0
	Color 71
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г  Use Mouse                   Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	batbox /g 1 2 /c 0x1f /d "Main"
	batbox /g 9 2 /c 0x1f /d "Advanced"
	batbox /g 21 2 /c 0x1f /d "Power"
	batbox /g 29 2 /c 0x1f /d "Boot" 
	batbox /g 37 2 /c 0x71 /d "Save&Exit"
	batbox /g 3 5 /c 0x71 /d "Save Changes and Reset"
	batbox /g 3 8 /c 0x71 /d "Restore Defaults"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 3 5 24 5 3 8 18 8 /h 71 71 71 71 17 7f 7f /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	if %ERRORLEVEL% == 6 goto :BIOS.Reset
	if %ERRORLEVEL% == 7 goto :BIOS.ResDefault
	

:BIOS.Reset
	:: Р У Т С Х й к Ф Е П Г л о н
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\Blue.bmp" /x:350 /y:180 /z:100
	batbox /g 44 15 /c 0x1f /d ""
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	batbox /g 44 16 /c 0x1f /d ""
	echo Г      Setup Confirmation     Г
	batbox /g 44 17 /c 0x1f /d ""
	echo УФФФФФФФФФФФФФФФФФФФФФФФФФФФФФД
	batbox /g 44 18 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 19 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 20 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 21 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 22 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 23 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 24 /c 0x1f /d ""
	echo Г                             Г
	batbox /g 44 25 /c 0x1f /d ""
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	batbox /g 75 25 /c 0x00 /d "л"
	batbox /g 75 24 /c 0x00 /d "л"
	batbox /g 75 23 /c 0x00 /d "л"
	batbox /g 75 22 /c 0x00 /d "л"
	batbox /g 75 21 /c 0x00 /d "л"
	batbox /g 75 20 /c 0x00 /d "л"
	batbox /g 75 19 /c 0x00 /d "л"
	batbox /g 75 18 /c 0x00 /d "л"
	batbox /g 75 17 /c 0x00 /d "л"
	batbox /g 75 16 /c 0x00 /d "л"
	batbox /g 45 26 /c 0x00 /d "ллллллллллллллллллллллллллллллл"
	batbox /g 52 23 /c 0x1f /d "[Yes]"
	batbox /g 62 23 /c 0x1f /d "[No]"
	
	rem clic
	for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
	set c=%%c
	set y=%%b
	set x=%%a
	)
	rem Yes cfg
	if %x% equ 52 if %y% equ 23 call Restart.cmd
	if %x% equ 53 if %y% equ 23 call Restart.cmd
	if %x% equ 54 if %y% equ 23 call Restart.cmd
	if %x% equ 55 if %y% equ 23 call Restart.cmd
	if %x% equ 56 if %y% equ 23 call Restart.cmd
	rem No cfg
	if %x% equ 62 if %y% equ 23 goto :BIOS.Save&Exit
	if %x% equ 63 if %y% equ 23 goto :BIOS.Save&Exit
	if %x% equ 64 if %y% equ 23 goto :BIOS.Save&Exit
	if %x% equ 65 if %y% equ 23 goto :BIOS.Save&Exit
	
	goto :BIOS.Reset
	

:BIOS.SysInfo
	bg cursor 0
	Color 71
	echo.
	echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	echo кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФТФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП
	echo Г                                  System Information                                 Г                              Г
	echo Г                                                                                     Г  Use Mouse                   Г
	echo Г                                PROCESSOR INFORMATION                                Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Identifier:                                                                         Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Architecture:                                                                       Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Version:                                                                            Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Number Of:                                                                          Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Level:                                                                              Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                   OS INFORMATION                                    Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Windows:                                                                            Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г Batch OS:                                                                           Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo Г                                                                                     Г                              Г
	echo РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФСФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbar.bmp" /x:0 /y:21 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\BIOSSU.bmp" /x:0 /y:0 /z:100
	insertbmp /p:"Norlex\System32\BIOS\Wallpapers\upbarinfo.bmp" /x:0 /y:489 /z:100
	batbox /g 1 2 /c 0x71 /d "Main"
	batbox /g 9 2 /c 0x1f /d "Advanced"
	batbox /g 21 2 /c 0x1f /d "Power"
	batbox /g 29 2 /c 0x1f /d "Boot" 
	batbox /g 37 2 /c 0x1f /d "Save&Exit"
	batbox /g 14 9 /c 0x71 /d "%Processor_Identifier%"
	batbox /g 16 11 /c 0x71 /d "%Processor_Architecture%"
	batbox /g 11 13 /c 0x71 /d "%Processor_Revision%"
	batbox /g 13 15 /c 0x71 /d "%Number_Of_Processors%"
	batbox /g 9 17 /c 0x71 /d "%Processor_Level%"
	batbox /g 11 22 /c 0x71 /d "%winver%"
	batbox /g 12 24 /c 0x71 /d "%BatchOSVer%"
	getinput /m 1 2 4 2 9 2 16 2 21 2 25 2 29 2 32 2 37 2 45 2 /h 71 71 71 71 71 /t 1000
	if %ERRORLEVEL% == 1 goto :BIOS.Main
	if %ERRORLEVEL% == 2 goto :BIOS.Advanced
	if %ERRORLEVEL% == 3 goto :BIOS.Power
	if %ERRORLEVEL% == 4 goto :BIOS.Boot
	if %ERRORLEVEL% == 5 goto :BIOS.Save&Exit
	
