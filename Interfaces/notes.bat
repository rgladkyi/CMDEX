@echo off

:Start
if "%1"==clear (echo. >> "C:\CMDEX\Data\Drafts.txt") else (cmd /c notepad "C:\CMDEX\Data\Drafts.txt")
goto End

:End

