@echo off

if "%1"=="" (
start "" "C:\CMDEX\Tools\WinDirStat\windirstat.exe" "%cd%"
)

if not "%1"=="" (
start "" "C:\CMDEX\Tools\WinDirStat\windirstat.exe" %1
)


