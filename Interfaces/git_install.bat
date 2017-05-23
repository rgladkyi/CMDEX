@echo off && call cmdex_pre_run.bat

set CURRENT_DIRECTORY_TO_COME_BACK=%cd%

call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Tools/PortableGit.zip" -O "%CMDEX_ROOT_DIR%\Tools\PortableGit.zip"

call cd /d "%CMDEX_ROOT_DIR%\Tools\"
call 7zip x -aoa "%CMDEX_ROOT_DIR%\Tools\PortableGit.zip"

echo Check whether installation is OK..

call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%


