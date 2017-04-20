@echo off

if not exist "C:\CMDEX\Tools\AltDrag\AltDrag.exe" (call C:\CMDEX\WinOpenInstaller\InstallScripts\altdrag_install.bat "C:\CMDEX\Tools")

if exist "C:\CMDEX\Tools\AltDrag\AltDrag.exe" (start "" "C:\CMDEX\Tools\AltDrag\AltDrag.exe" %*) else (echo Installation failed.. Check itself. && goto Exit)
goto Instructions

:Instructions
echo.
echo Press 'Alt + <Left Mouse> ' to drag windows.
goto End

:Exit

:End


