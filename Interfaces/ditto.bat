@echo off

if not exist "%CMDEX_ROOT_DIR%\Tools\Ditto\Ditto.exe" (call %CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\ditto_install.bat "%CMDEX_ROOT_DIR%\Tools")

if exist "%CMDEX_ROOT_DIR%\Tools\Ditto\Ditto.exe" (start "" "%CMDEX_ROOT_DIR%\Tools\Ditto\Ditto.exe" %*) else (echo Installation failed.. Check itself. && goto Exit)
goto Instructions

:Instructions
echo.
echo Press 'Ctrl + ~ ' to open Ditto clipboard manager.
goto End

:Exit

:End

