@echo off

:CheckMinGw
call check_tool "C:\CMDEX\Tools\MinGW\bin\mingw32-gcc-5.3.0.exe" C:\CMDEX\WinOpenInstaller\InstallScripts\mingw_install.bat  "C:\CMDEX\Tools\"
if %errorlevel% equ 0 (goto ExecuteMinGW) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:ExecuteMinGW
REM Add path
set PATH=%PATH%;C:\CMDEX\Tools\MinGW\bin;

call "mingw32-gcc-5.3.0.exe" %*

REM Undo path
set PATH=%PATH:;C:\CMDEX\Tools\MinGW\bin;=%
goto End

:End


