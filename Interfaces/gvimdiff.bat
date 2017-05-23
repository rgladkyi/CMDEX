@echo off && call cmdex_pre_run.bat

:Check
call check_tool "%CMDEX_ROOT_DIR%\Tools\Vim\vim80\gvim.exe" "%CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\vim_install.bat"  "%CMDEX_ROOT_DIR%\Tools\"
if %errorlevel% equ 0 (goto Execute) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:Execute
start "" "%CMDEX_ROOT_DIR%\Tools\Vim\vim80\gvim.exe" -d %*
rem call vim_del_temps.bat > NUL
goto End

:End


