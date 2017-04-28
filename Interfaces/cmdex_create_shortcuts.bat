@echo off

echo %cd%

copy /v /y "%CMDEX_ROOT_DIR%\Interfaces\ADMIN.lnk" "%USERPROFILE%\Desktop\"
copy /v /y "%CMDEX_ROOT_DIR%\Interfaces\CMDEX.lnk" "%USERPROFILE%\Desktop\"

