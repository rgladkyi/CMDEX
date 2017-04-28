@echo off

:Start
if "%1"==clear (echo. >> "%CMDEX_ROOT_DIR%\Data\Drafts.txt") else (cmd /c notepad "%CMDEX_ROOT_DIR%\Data\Drafts.txt")
goto End

:End

