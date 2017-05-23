rem @echo off && call cmdex_pre_run.bat

rem call cmdex_remove_from_path

rem setx /m PATH "%PATH%;%CMDEX_ROOT_DIR%\Interfaces" 

rem REG ADD HKCU\SOFTWARE\Ditto /v DittoHotKey /f /t REG_DWORD /d 704
rem REG QUERY HKCU\SOFTWARE\Ditto /v DittoHotKey 
 
rem reg add ... HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment\Path





set CMDEX_ROOT_DIR_WRAPPED=%1
echo %date% %time% >> C:\cmdex_debug.txt
echo %1 >> C:\cmdex_debug.txt
echo %CMDEX_ROOT_DIR% >> C:\cmdex_debug.txt
pause
set CMDEX_ROOT_DIR=%CMDEX_ROOT_DIR_WRAPPED:"=%


set REVERTED_PATH=%PATH:;%CMDEX_ROOT_DIR%\Interfaces=%
echo %REVERTED_PATH%
pause
set UPDATED_PATH="%REVERTED_PATH%;%CMDEX_ROOT_DIR%\Interfaces"
echo %UPDATED_PATH%
pause
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f /t REG_SZ /d %UPDATED_PATH%
pause


