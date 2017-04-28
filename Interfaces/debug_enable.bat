@echo off

set DIRECTORY_PATH_TO_RETURN=%cd%
echo %DIRECTORY_PATH_TO_RETURN%

call create_dir_if_no_and_cd.bat "%CMDEX_ROOT_DIR%\Interfaces\Temp" 

call sed -r -i "s/^\@echo off/REM \@echo off/g" "%CMDEX_ROOT_DIR%\Interfaces\*.bat"

cd /d %DIRECTORY_PATH_TO_RETURN%




