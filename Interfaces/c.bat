@echo off && call cmdex_pre_run.bat

call pwd_save

if [%1]==[] (cd) else (cd /d %*)


