@echo off @echo off@echo off call cmdex_pre_run.bat @echo off @echo off@echo off call cmdex_pre_run.bat@echo off @echo off@echo off call cmdex_pre_run.bat call cmdex_pre_run.bat

set CURRENT_DIRECTORY_TO_COME_BACK=%cd%

call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Tools/Vim.zip" -O "%CMDEX_ROOT_DIR%\Tools\Vim.zip"

call cd /d "%CMDEX_ROOT_DIR%\Tools\"
call 7zip x -aoa "%CMDEX_ROOT_DIR%\Tools\Vim.zip"

echo Check whether installation is OK..

call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%


