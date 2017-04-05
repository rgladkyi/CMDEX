@echo off

:Start
if [%1]==[] (goto SaveInNotepad) else (goto SaveAsCMDParams)
goto End

:SaveInNotepad
echo. >> "C:\CMDEX\Data\CurrentDraft.txt" 
cmd /c notepad "C:\CMDEX\Data\CurrentDraft.txt" 
type "C:\CMDEX\Data\CurrentDraft.txt" >> "C:\CMDEX\Data\Drafts.txt" 
del "C:\CMDEX\Data\CurrentDraft.txt"
goto End

:SaveAsCMDParams
echo %* >> "C:\CMDEX\Data\Drafts.txt" 
goto End

:End

