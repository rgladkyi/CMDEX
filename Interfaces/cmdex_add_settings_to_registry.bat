rem @echo off

set CMDEX_ROOT_DIR_REGISTRY=%1
echo %date% %time% >> C:\cmdex_debug.txt
echo %1 >> C:\cmdex_debug.txt
echo %CMDEX_ROOT_DIR_REGISTRY% >> C:\cmdex_debug.txt
pause

REG ADD "HKCU\Software\Conjeside\CMDEX" /v RootDirectory /f /t REG_SZ /d %CMDEX_ROOT_DIR_REGISTRY%
pause
