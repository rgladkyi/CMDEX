@echo off

call pwd_save

:Dir
if [%1]==[] (call dir /on) else (goto Find)
goto End

:Find
if exist %* (call dir /on %*) else (call dir /on *%**)
goto End

:End


