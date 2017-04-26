@echo off

set P1=%1
set P2=%2

call sed -i "s|%P1:"=%|%P2:"=%|g" %3


