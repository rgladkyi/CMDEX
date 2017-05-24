@echo off && call cmdex_pre_run.bat

if [%1]==[] (call ls "%CMDEX_ROOT_DIR%\Wall") else ("%CMDEX_ROOT_DIR%\Wall\%1")


