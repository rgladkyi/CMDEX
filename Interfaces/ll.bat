@echo off && call cmdex_pre_run.bat

call pwd_save

:Dir
if [%1]==[] (call dir /b) else (goto Find)
goto End

:Find
if exist %* (call dir /b %*) else (call dir /b *%**)
goto End

:End


