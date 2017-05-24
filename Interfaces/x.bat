@echo off && call cmdex_pre_run.bat

if [%1]==[] (start "" ADMIN.lnk %cd%) else (start "" ADMIN.lnk %*)


