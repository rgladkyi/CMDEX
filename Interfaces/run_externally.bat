@echo off && call cmdex_pre_run.bat

set DIR_TO_CHANGE=%1
set CMD_TO_EXEC=%2 %3 %4 %5 %6 %7 %8 %9

echo Script folder: "%cd%"
echo Execute in: %DIR_TO_CHANGE%
echo Command to execute: %CMD_TO_EXEC%

call cd /d %DIR_TO_CHANGE%
call "%CMDEX_ROOT_DIR%\Interfaces\%CMD_TO_EXEC%"

call pause


