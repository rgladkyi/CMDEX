@echo off && call cmdex_pre_run.bat

set P1=%1
set P2=%2

call sed -i "s/%P1:"=%/%P2:"=%/g" %3


