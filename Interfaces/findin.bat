@echo off

call pwd_save
call findstr /s /r /i /a:02 /p /n %*

