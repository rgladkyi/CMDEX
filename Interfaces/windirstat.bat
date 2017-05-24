@echo off && call cmdex_pre_run.bat

if "%1"=="" (
start "" "%CMDEX_ROOT_DIR%\Tools\WinDirStat\windirstat.exe" "%cd%"
)

if not "%1"=="" (
start "" "%CMDEX_ROOT_DIR%\Tools\WinDirStat\windirstat.exe" %1
)


