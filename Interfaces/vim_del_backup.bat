@echo off && call cmdex_pre_run.bat

call mvt %1~ > NUL
call mvt .%1.un~ > NUL


