@echo off && call cmdex_pre_run.bat

:Start
if "%1"=="addhelpx" (goto AddHelpX) else (goto PrintHelp)
goto End

:AddHelpX
echo %2 %3 %4 %5 %6 %7 %8 %9 >> "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Help.txt"
echo %2 %3 %4 %5 %6 %7 %8 %9 >> "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Commands_Description.txt"
echo %2 %3 %4 %5 %6 %7 %8 %9 >> "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Commands.txt"
goto End

:PrintHelp
if "%*"=="" (goto PrintAllHelp) else (goto PrintSpecificHelp)
goto End

:PrintAllHelp
(type "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Help.txt" && help) | more
goto End

:PrintSpecificHelp
rem call %* --help | more

if exist "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Commands_Documentation\*%**" (type "%CMDEX_ROOT_DIR%\Documentation\CMDEX_Commands_Documentation\*%**" | more)

rem %* /? | more

rem ifnokdo %* /?


goto End

:End
