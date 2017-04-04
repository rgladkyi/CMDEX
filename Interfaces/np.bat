@echo off

if not exist "C:\CMDEX\Tools\Notepad++\notepad++.exe" (call np_install.bat)

if exist "C:\CMDEX\Tools\Notepad++\notepad++.exe" (start "" "C:\CMDEX\Tools\Notepad++\notepad++.exe" %*) else (echo Installation failed.. Check itself.)


