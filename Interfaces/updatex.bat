@echo off && call cmdex_pre_run.bat

call cp "%CMDEX_ROOT_DIR%\Interfaces\cmdex_update.bat" "%TEMP%\cmdex_update_temp.bat"
(call sudo.lnk /c "%TEMP%\cmdex_update_temp.bat") && goto :EOF


