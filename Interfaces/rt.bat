@echo off && call cmdex_pre_run.bat

echo To execute in: "%cd%"
echo Planned to execute: %*

call "%CMDEX_ROOT_DIR%\Interfaces\sudo.lnk" /c "%CMDEX_ROOT_DIR%\Interfaces\run_externally.bat" "%cd%" %*


