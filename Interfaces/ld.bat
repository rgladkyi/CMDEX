@echo off

call pwd_save

:Dir
if [%1]==[] (call dir /od) else (goto Find)
goto End

:Find
if exist %* (call dir /od %*) else (call dir /od *%**)
goto End

:End


