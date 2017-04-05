@echo off

if not exist "C:\CMDEX\Tools\Ditto\Ditto.exe" (call C:\CMDEX\WinOpenInstaller\InstallScripts\ditto_install.bat "C:\CMDEX\Tools\")

if exist "C:\CMDEX\Tools\Ditto\Ditto.exe" (start "" "C:\CMDEX\Tools\Ditto\Ditto.exe" %*) else (echo Installation failed.. Check itself. && goto Exit)
goto Instructions

:Instructions
echo.
echo Press 'Ctrl + ~ ' to open Ditto clipboard manager.
goto End

:Exit

:End