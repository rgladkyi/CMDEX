@echo off

if not exist "%CMDEX_ROOT_DIR%\Tools\Mp3tag\Mp3tag.exe" (call %CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\mp3tag_install.bat "%CMDEX_ROOT_DIR%\Tools")

if exist "%CMDEX_ROOT_DIR%\Tools\Mp3tag\Mp3tag.exe" (start "" "%CMDEX_ROOT_DIR%\Tools\Mp3tag\Mp3tag.exe" %*) else (echo Installation failed.. Check itself. && goto Exit)
goto Instructions

:Instructions
echo.
echo Use 'Mp3tag' to edit tags of your music track files.
goto End

:Exit

:End


