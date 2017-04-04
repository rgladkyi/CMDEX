@echo off

for /F "tokens=*" %%A in (%1) do (%2 %%A)


