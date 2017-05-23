@echo off && call cmdex_pre_run.bat

set EXECUTE_COMMAND=%1
REM Remove all " " symbols.
set EXECUTE_COMMAND_UNWRAPPED=%EXECUTE_COMMAND:"=%

%EXECUTE_COMMAND_UNWRAPPED%


