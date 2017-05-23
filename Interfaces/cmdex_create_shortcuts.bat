@echo off && call cmdex_pre_run.bat

echo %cd%
echo %CMDEX_ROOT_DIR%

copy /v /y "%CMDEX_ROOT_DIR%\Interfaces\ADMIN.lnk" "%USERPROFILE%\Desktop\"
copy /v /y "%CMDEX_ROOT_DIR%\Interfaces\CMDEX.lnk" "%USERPROFILE%\Desktop\"

