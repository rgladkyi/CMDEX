@echo off

:Check
call check_tool "C:\CMDEX\Tools\Vim\vim80\vim.exe" vim_install.bat
if %errorlevel% equ 0 (goto Execute) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:Execute
call "C:\CMDEX\Tools\Vim\vim80\vim.exe" -d %*
rem call vim_del_temps.bat
goto End

:End


