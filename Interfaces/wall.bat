@echo off @echo off@echo off call cmdex_pre_run.bat @echo off @echo off@echo off call cmdex_pre_run.bat@echo off @echo off@echo off call cmdex_pre_run.bat call cmdex_pre_run.bat

if [%1]==[] (call ls "%CMDEX_ROOT_DIR%\Wall") else ("%CMDEX_ROOT_DIR%\Wall\%1")


