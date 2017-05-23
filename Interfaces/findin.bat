@echo off && call cmdex_pre_run.bat

call pwd_save
call findstr /s /r /i /a:02 /p /n %*

