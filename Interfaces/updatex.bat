@echo off

call cp "C:\CMDEX\Interfaces\cmdex_update.bat" "%TEMP%\cmdex_update_temp.bat"
(call sudo "%TEMP%\cmdex_update_temp.bat") && goto :EOF


