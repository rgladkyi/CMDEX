@echo off

:Start
if "%1"=="admin" (set PATH_FILE_DATE_LAST_OPENED="%CMDEX_ROOT_DIR%\Data\Date_last_opened_admin.txt") else (set PATH_FILE_DATE_LAST_OPENED="%CMDEX_ROOT_DIR%\Data\Date_last_opened.txt")

call home
call cmdex_get_set_root_dir.bat

if exist %PATH_FILE_DATE_LAST_OPENED% (call find "%date%" %PATH_FILE_DATE_LAST_OPENED% > NUL) else (call throw_error)
if %errorlevel%==1 (goto CheckVersion)
goto StartCMD

:CheckVersion

REM echo Actions related to check for update
set /p VersionId_txt=<"%CMDEX_ROOT_DIR%\Release\VersionId.txt"
if "%VersionId_txt%"=="" (set VersionId_txt=0)
set /p VersionIdUpdated_txt=<"%CMDEX_ROOT_DIR%\Release\VersionIdUpdated.txt"
if "%VersionIdUpdated_txt%"=="" (set VersionIdUpdated_txt=0)

REM echo if new version is available, do not do additional checks. If curently is latest version then check for updates.
if %VersionIdUpdated_txt% gtr %VersionId_txt% (goto StartCMD) else (goto CheckForUpdates)
goto End

:CheckForUpdates
call wget -q --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Release/VersionId.txt" -O "%CMDEX_ROOT_DIR%\Release\VersionIdUpdated.txt" 1> NUL 2> NUL
if %errorlevel% neq 0 (echo Download fails. Check itself the 'updatex.bat' in 'Interfaces' folder. && goto StartCMD) 1> NUL 2> NUL

set /p VersionId_txt=<"%CMDEX_ROOT_DIR%\Release\VersionId.txt"
if "%VersionId_txt%"=="" (set VersionId_txt=0)

set /p VersionIdUpdated_txt=<"%CMDEX_ROOT_DIR%\Release\VersionIdUpdated.txt"
if "%VersionIdUpdated_txt%"=="" (set VersionIdUpdated_txt=0)


if %VersionIdUpdated_txt% gtr %VersionId_txt% (goto UpdateNotification)
goto StartCMD

:UpdateNotification
echo.
echo New CMDEX version %VersionIdUpdated_txt% available. Type 'updatex' to update it.
echo.
call pause
echo. 
goto StartCMD

:StartCMD
echo %date% > %PATH_FILE_DATE_LAST_OPENED%
goto StartCmd

:StartCmd
call c  %2 %3 %4 %5 %6 %7 %8 %9
rem cmd
cmd /k cmdex_get_set_root_dir.bat
goto End

:End


