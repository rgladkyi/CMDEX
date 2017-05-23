@echo off && call cmdex_pre_run.bat

for /F "tokens=*" %%A in (%1) do (%2 %%A)


