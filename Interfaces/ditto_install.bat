@echo off

set CURRENT_DIRECTORY_TO_COME_BACK=%cd%

call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Tools/Ditto.zip" -O "C:\CMDEX\Tools\Ditto.zip"

call cd /d "C:\CMDEX\Tools\"
call 7zip x -aoa "C:\CMDEX\Tools\Ditto.zip"

REG ADD HKCU\SOFTWARE\Ditto /v DittoHotKey /f /t REG_DWORD /d 704
REG QUERY HKCU\SOFTWARE\Ditto /v DittoHotKey 

echo DittoHotKey
echo In 2c0 means 'Ctrl + ~ ' - shortcut to open ditto.

echo Check whether installation is OK..

call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%


