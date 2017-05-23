@echo off && call cmdex_pre_run.bat

:Start
if [%1]==[] (goto SaveInNotepad) else (goto SaveAsCMDParams)
goto End

:SaveInNotepad
echo. >> "%CMDEX_ROOT_DIR%\Data\CurrentDraft.txt" 
cmd /c notepad "%CMDEX_ROOT_DIR%\Data\CurrentDraft.txt" 
type "%CMDEX_ROOT_DIR%\Data\CurrentDraft.txt" >> "%CMDEX_ROOT_DIR%\Data\Drafts.txt" 
del "%CMDEX_ROOT_DIR%\Data\CurrentDraft.txt"
goto End

:SaveAsCMDParams
echo %* >> "%CMDEX_ROOT_DIR%\Data\Drafts.txt" 
goto End

:End

