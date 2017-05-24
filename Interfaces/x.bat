@echo off && call cmdex_pre_run.bat

if [%1]==[] (start "" ADMIN.lnk /k cd "%cd%") else (start "" ADMIN.lnk %*)


