@echo off

call move %1 %1.swap
call move %2 %1
call move %1.swap %2


