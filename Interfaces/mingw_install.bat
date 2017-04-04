@echo off

set CURRENT_DIRECTORY_TO_COME_BACK=%cd%

call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Tools/MinGW.zip" -O "C:\CMDEX\Tools\MinGW.zip"

call cd /d "C:\CMDEX\Tools\"
call 7zip x -aoa "C:\CMDEX\Tools\MinGW.zip"

echo Check whether installation is OK..

call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%


