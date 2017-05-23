@echo off

if ["%CMDEX_ROOT_DIR%"]==[] (goto InitializeCMDEX)
if not exist "%CMDEX_ROOT_DIR%" (goto InitializeCMDEX)
goto Action

:InitializeCMDEX
call cmdex_get_set_root_dir.bat
call cmdex_create_shortcuts.bat
goto Action

:Action
goto Exit

:Exit


