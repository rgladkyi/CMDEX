@echo off && call cmdex_pre_run.bat

REM PROOF_OF_CONCEPT

rem IF %ERRORLEVEL% EQU 0 (Echo No error found) ELSE (Echo An error was found)

if not %ERRORLEVEL% equ 0 (%*)


