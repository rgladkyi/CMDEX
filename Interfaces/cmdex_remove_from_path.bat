@echo off

rem set LOCAL_PATH=%PATH%
rem echo %LOCAL_PATH%

rem set UPDATED_LOC_PATH=%LOCAL_PATH:;C:\CMDEX\Interfaces;=%
rem set UPDATED_LOC_PATH_1=%UPDATED_LOC_PATH:;C:\CMDEX\Interfaces=%
rem echo %UPDATED_LOC_PATH_1%

rem set PATH=%UPDATED_LOC_PATH%
rem setx /m PATH %UPDATED_LOC_PATH%

rem REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f /t REG_SZ /d %UPDATED_LOC_PATH_1%


set UPDATED_PATH="%PATH:;C:\CMDEX\Interfaces=%"

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f /t REG_SZ /d %UPDATED_PATH%


