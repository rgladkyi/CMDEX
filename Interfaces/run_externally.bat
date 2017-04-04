@echo off

set DIR_TO_CHANGE=%1
set CMD_TO_EXEC=%2 %3 %4 %5 %6 %7 %8 %9

echo Script folder: "%cd%"
echo Execute in: %DIR_TO_CHANGE%
echo Command to execute: %CMD_TO_EXEC%

call c %DIR_TO_CHANGE%
call %CMD_TO_EXEC%

call pause


