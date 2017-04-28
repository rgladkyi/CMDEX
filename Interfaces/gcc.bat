@echo off

:CheckMinGw
call check_tool "%CMDEX_ROOT_DIR%\Tools\MinGW\bin\mingw32-gcc-5.3.0.exe" %CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\mingw_install.bat  "%CMDEX_ROOT_DIR%\Tools\"
if %errorlevel% equ 0 (goto ExecuteMinGW) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:ExecuteMinGW
REM Add path
set PATH=%PATH%;%CMDEX_ROOT_DIR%\Tools\MinGW\bin;

call "mingw32-gcc-5.3.0.exe" %*

REM Undo path
set PATH=%PATH:;%CMDEX_ROOT_DIR%\Tools\MinGW\bin;=%
goto End

:End


