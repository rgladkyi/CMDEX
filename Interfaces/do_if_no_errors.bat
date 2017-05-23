@echo off && call cmdex_pre_run.bat

if %errorlevel% equ 0 (%*) else (echo. && echo Throwed error code: %errorlevel% && echo.)

