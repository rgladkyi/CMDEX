@echo off

rem call cmdex_remove_from_path

rem setx /m PATH "%PATH%;%CMDEX_ROOT_DIR%\Interfaces" 

rem REG ADD HKCU\SOFTWARE\Ditto /v DittoHotKey /f /t REG_DWORD /d 704
rem REG QUERY HKCU\SOFTWARE\Ditto /v DittoHotKey 
 
rem reg add ... HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment\Path


set REVERTED_PATH=%PATH:;%CMDEX_ROOT_DIR%\Interfaces=%
set UPDATED_PATH="%REVERTED_PATH%;%CMDEX_ROOT_DIR%\Interfaces"

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f /t REG_SZ /d %UPDATED_PATH%



