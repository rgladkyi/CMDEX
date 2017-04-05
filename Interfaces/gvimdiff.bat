@echo off

:Check
call check_tool "C:\CMDEX\Tools\Vim\vim80\gvim.exe" C:\CMDEX\WinOpenInstaller\InstallScripts\vim_install.bat  "C:\CMDEX\Tools\"
if %errorlevel% equ 0 (goto Execute) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:Execute
start "" "C:\CMDEX\Tools\Vim\vim80\gvim.exe" -d %*
rem call vim_del_temps.bat > NUL
goto End

:End


