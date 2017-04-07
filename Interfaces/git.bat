@echo off

if not exist "C:\CMDEX\Tools\PortableGit\cmd\git.exe" (call C:\CMDEX\WinOpenInstaller\InstallScripts\git_install.bat "C:\CMDEX\Tools")
if exist "C:\CMDEX\Tools\PortableGit\cmd\git.exe" (call "C:\CMDEX\Tools\PortableGit\cmd\git.exe" %*) else (echo Installation failed.. Check itself.)


