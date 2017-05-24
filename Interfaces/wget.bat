@echo off && call cmdex_pre_run.bat

call throw_reset
call "%CMDEX_ROOT_DIR%\Tools\GnuWin32\bin\wget" %*


