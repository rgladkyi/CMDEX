@echo off && call cmdex_pre_run.bat

echo.
echo Are you sure to delete the "%*" ?
echo If there is no need to delete this, press "Ctrl+C" to terminate this.

call rmdir /s %*


