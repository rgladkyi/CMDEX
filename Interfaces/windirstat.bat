@echo off

if "%1"=="" (
start "" "%CMDEX_ROOT_DIR%\Tools\WinDirStat\windirstat.exe" "%cd%"
)

if not "%1"=="" (
start "" "%CMDEX_ROOT_DIR%\Tools\WinDirStat\windirstat.exe" %1
)


