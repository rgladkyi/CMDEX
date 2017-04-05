@echo off

if not exist "C:\CMDEX\Tools\Notepad++\notepad++.exe" (call C:\CMDEX\WinOpenInstaller\InstallScripts\np_install.bat "C:\CMDEX\Tools\")

if exist "C:\CMDEX\Tools\Notepad++\notepad++.exe" (start "" "C:\CMDEX\Tools\Notepad++\notepad++.exe" %*) else (echo Installation failed.. Check itself.)


