@echo off

if not exist "%CMDEX_ROOT_DIR%\Tools\Notepad++\notepad++.exe" (call %CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\np_install.bat "%CMDEX_ROOT_DIR%\Tools")

if exist "%CMDEX_ROOT_DIR%\Tools\Notepad++\notepad++.exe" (start "" "%CMDEX_ROOT_DIR%\Tools\Notepad++\notepad++.exe" %*) else (echo Installation failed.. Check itself.)


