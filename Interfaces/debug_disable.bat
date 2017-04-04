@echo off

set DIRECTORY_PATH_TO_RETURN=%cd%
echo %DIRECTORY_PATH_TO_RETURN%

call create_dir_if_no_and_cd.bat "C:\CMDEX\Interfaces\Temp" 

call sed -r -i "s/^REM \@echo off/\@echo off/g" "C:\CMDEX\Interfaces\*.bat"

cd /d %DIRECTORY_PATH_TO_RETURN%


