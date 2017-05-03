@echo off

set INSTALL_DIR=%1
if [%INSTALL_DIR%]==[] (echo Need to specify install directory as first parameter. && goto Error) else (goto DoInstall)

:DoInstall
mkdir C:\CMDEX\Aliases
mkdir C:\CMDEX\Automation
mkdir C:\CMDEX\Data
mkdir C:\CMDEX\Documentation
mkdir C:\CMDEX\History
mkdir C:\CMDEX\Installer
mkdir C:\CMDEX\Interfaces
mkdir C:\CMDEX\Release
mkdir C:\CMDEX\Resources
mkdir C:\CMDEX\TestCases
mkdir C:\CMDEX\Tools
mkdir C:\CMDEX\Trash
mkdir C:\CMDEX\Wall

call cmdex_add_settings_to_registry.bat %INSTALL_DIR%
call cmdex_get_set_root_dir.bat

call "C:\CMDEX\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"
call "C:\CMDEX\Interfaces\sudo.bat" "C:\CMDEX\Interfaces\cmdex_add_to_path.bat"
call "C:\CMDEX\Interfaces\cmdex_create_shortcuts.bat"

echo.
echo Completed.

pause
goto End

:End

:Error


