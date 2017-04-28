@echo off

if not exist "%CMDEX_ROOT_DIR%\Tools\PortableGit\cmd\git.exe" (call %CMDEX_ROOT_DIR%\WinOpenInstaller\InstallScripts\git_install.bat "%CMDEX_ROOT_DIR%\Tools")
if exist "%CMDEX_ROOT_DIR%\Tools\PortableGit\cmd\git.exe" (call "%CMDEX_ROOT_DIR%\Tools\PortableGit\cmd\git.exe" %*) else (echo Installation failed.. Check itself.)


