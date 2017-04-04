@echo off

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

call "C:\CMDEX\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"
call "C:\CMDEX\Interfaces\sudo.bat" "C:\CMDEX\Interfaces\cmdex_add_to_path.bat"
call "C:\CMDEX\Interfaces\cmdex_create_shortcuts.bat"

echo.
echo Completed.

pause
