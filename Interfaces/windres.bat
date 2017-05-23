@echo off @echo off@echo off call cmdex_pre_run.bat @echo off @echo off@echo off call cmdex_pre_run.bat@echo off @echo off@echo off call cmdex_pre_run.bat call cmdex_pre_run.bat

:CheckMinGw
call check_tool "%CMDEX_ROOT_DIR%\Tools\MinGW\bin\windres.exe" "%CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\mingw_install.bat"  "%CMDEX_ROOT_DIR%\Tools\"
if %errorlevel% equ 0 (goto ExecuteMinGW) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:ExecuteMinGW
REM Add path
set PATH=%PATH%;%CMDEX_ROOT_DIR%\Tools\MinGW\bin;

call "windres.exe" %*

REM Undo path
set PATH=%PATH:;%CMDEX_ROOT_DIR%\Tools\MinGW\bin;=%
goto End

:End


