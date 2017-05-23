@echo off && call cmdex_pre_run.bat

:CheckTool
if not exist %1 (goto InstallTool) else (call throw_reset)
goto End

:InstallTool
call %2 %3 %4 %5 %6 %7 %8 %9
if exist %1 (goto PostInstallTool) else (goto InstallationFailed)
goto End

:InstallationFailed
echo Installation failed.. Check itself the %2..
call throw_error 1 
goto End

:PostInstallTool
echo Installation completed.
call throw_reset
goto End

:End


