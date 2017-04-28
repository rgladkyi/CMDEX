@echo off

if [%1]==[] (call ls "%CMDEX_ROOT_DIR%\Wall") else ("%CMDEX_ROOT_DIR%\Wall\%1")


