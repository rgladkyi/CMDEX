@echo off && call cmdex_pre_run.bat

call pwd_save

:Dir
if [%1]==[] (call dir /s /b) else (goto Find)
goto End

:Find
if exist %* (call dir /s /b %*) else (call dir /s /b *%**)
goto End

:End


