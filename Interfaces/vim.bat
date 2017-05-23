@echo off @echo off@echo off call cmdex_pre_run.bat @echo off @echo off@echo off call cmdex_pre_run.bat@echo off @echo off@echo off call cmdex_pre_run.bat call cmdex_pre_run.bat

:Check
call check_tool "%CMDEX_ROOT_DIR%\Tools\Vim\vim80\vim.exe" "%CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\vim_install.bat"  "%CMDEX_ROOT_DIR%\Tools"
if %errorlevel% equ 0 (goto Execute) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:Execute
call "%CMDEX_ROOT_DIR%\Tools\Vim\vim80\vim.exe" -n %*
rem call vim_del_backup.bat %* > NUL
goto End

:End


