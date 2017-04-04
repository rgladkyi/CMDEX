@echo off

:CheckMinGw
call check_tool "C:\CMDEX\Tools\MinGW\bin\mingw32-make.exe" mingw_install.bat
if %errorlevel% equ 0 (goto ExecuteMinGW) else (echo. && echo Throwed error code: %errorlevel% && echo.)
goto End

:ExecuteMinGW
REM Add path
set PATH=%PATH%;C:\CMDEX\Tools\MinGW\bin;

call "mingw32-make.exe" %*

REM Undo path
set PATH=%PATH:;C:\CMDEX\Tools\MinGW\bin;=%

:End


