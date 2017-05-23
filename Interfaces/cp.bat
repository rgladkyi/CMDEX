@echo off && call cmdex_pre_run.bat

set PARAMETERS=%*

REM Replace Linux style path to windows style if any.
set PARAMETERS_1=%PARAMETERS:/=\%

call copy %PARAMETERS_1%


