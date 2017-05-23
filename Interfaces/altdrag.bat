@echo off && call cmdex_pre_run.bat

if not exist "%CMDEX_ROOT_DIR%\Tools\AltDrag\AltDrag.exe" (call "%CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\altdrag_install.bat" "%CMDEX_ROOT_DIR%\Tools")

if exist "%CMDEX_ROOT_DIR%\Tools\AltDrag\AltDrag.exe" (start "" "%CMDEX_ROOT_DIR%\Tools\AltDrag\AltDrag.exe" %*) else (echo Installation failed.. Check itself. && goto Exit)
goto Instructions

:Instructions
echo.
echo Press 'Alt + <Left Mouse> ' to drag windows.
goto End

:Exit

:End


