@echo off

if %errorlevel% equ 0 (%*) else (echo. && echo Throwed error code: %errorlevel% && echo.)

