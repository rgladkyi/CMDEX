@echo off

:Start
if [%1]==[] (type "C:\CMDEX\Data\Drafts.txt") else (goto SaveDrafts)
goto End

:SaveDrafts
rem http://www.usb.org/developers/docs/

rem call findstr /i %* "C:\CMDEX\Data\Drafts.txt"

rem call findstr /x %* "C:\CMDEX\Data\Drafts.txt"

echo %* >> "C:\CMDEX\Data\Drafts.txt" 
goto End

:End

