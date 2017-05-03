@echo off

call n "%CMDEX_ROOT_DIR%\Release\VersionId.txt"
call pause3

set /p VersionId_txt=<"%CMDEX_ROOT_DIR%\Release\VersionId.txt"
echo New version is %VersionId_txt%.

set DIRECTORY_PATH_TO_RETURN=%cd%
echo %DIRECTORY_PATH_TO_RETURN%

cd "C:\Program Files (x86)\NSIS\Bin\"
call cmdex_make_installer

cd %DIRECTORY_PATH_TO_RETURN%
