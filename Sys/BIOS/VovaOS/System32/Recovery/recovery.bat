@echo off
Color 1f
title Recovery menu
cls
mode con: lines=42 cols=119

:1
	cls
	echo.
	echo Welcome to Norlex 1.2 OS Recovery
	echo Recovery Norlex 1.2 (SP1)
	echo.
	echo Are  you ready to restore the system ?(Y/N)
	set /p rus=Choice:

		if /i %rus% == Y goto recovery
		if /i %rus% == N exit
		if not /i %rus% == Y goto :1
		if not /i %rus% == N goto :1
	

:recovery
	echo Recovering system...
	echo.
	echo Recovering batbox.exe...
	xcopy Norlex\System32\Recovery\batbox.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering Bg.exe...
	xcopy Norlex\System32\Recovery\Bg.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering cmdmenusel.exe...
	xcopy Norlex\System32\Recovery\cmdmenusel.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering GetInput.exe...
	xcopy Norlex\System32\Recovery\GetInput.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering InsertBmp.exe...
	xcopy Norlex\System32\Recovery\InsertBmp.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering nircmd.exe...
	xcopy Norlex\System32\Recovery\nircmd.exe /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering Restart.cmd...
	xcopy Norlex\System32\Recovery\Restart.cmd /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering SOUND.EXE...
	xcopy Norlex\System32\Recovery\SOUND.EXE /f /y >nul
	ping localhost -n 2,1 >nul
	echo.
	echo Recovering completed
	ping localhost -n 2 >nul
	call Restart.cmd