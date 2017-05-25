@echo off && call cmdex_pre_run.bat

if ["%1"]==["off"] (call prompt && goto End) else (goto Clock_On)

:Clock_On
call prompt $T$B$S$P$G
echo.
echo Type 'clock off' to back to the default prompt.
echo.
goto End

:End


