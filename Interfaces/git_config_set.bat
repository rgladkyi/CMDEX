rem @echo off

call git config --get-all %1
pause
if %ERRORLEVEL% equ 0 (call git config --global --replace-all %1 %2) else (call git config --global --add %1 %2) 


