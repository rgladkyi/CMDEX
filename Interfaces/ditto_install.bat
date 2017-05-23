@echo off && call cmdex_pre_run.bat

set CURRENT_DIRECTORY_TO_COME_BACK=%cd%

call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Tools/Ditto.zip" -O "%CMDEX_ROOT_DIR%\Tools\Ditto.zip"

call cd /d "%CMDEX_ROOT_DIR%\Tools\"
call 7zip x -aoa "%CMDEX_ROOT_DIR%\Tools\Ditto.zip"

REG ADD HKCU\SOFTWARE\Ditto /v DittoHotKey /f /t REG_DWORD /d 704
REG QUERY HKCU\SOFTWARE\Ditto /v DittoHotKey 

echo DittoHotKey
echo In 2c0 means 'Ctrl + ~ ' - shortcut to open ditto.

echo Check whether installation is OK..

call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%


