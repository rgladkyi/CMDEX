@echo off && call cmdex_pre_run.bat

call pwd_save

:Dir
if [%1]==[] (call dir /os) else (goto Find)
goto End

:Find
if exist %* (call dir /os %*) else (call dir /os *%**)
goto End

:End


