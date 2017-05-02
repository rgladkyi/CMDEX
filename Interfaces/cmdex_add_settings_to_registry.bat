@echo off

set CMDEX_ROOT_DIR="C:\CMDEX"

REG ADD "HKCU\Software\Conjeside\CMDEX" /v RootDirectory /f /t REG_SZ /d %CMDEX_ROOT_DIR%

