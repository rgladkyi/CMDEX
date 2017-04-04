@echo off

:Start
set CURRENT_DIRECTORY_TO_COME_BACK=%cd%
goto CheckForUpdate

:CheckForUpdate
call wget -q --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Release/VersionId.txt" -O "C:\CMDEX\Release\VersionIdUpdated.txt" 1> NUL 2> NUL
if %errorlevel% neq 0 (echo Download fails. Check itself the 'update.bat' in 'Interfaces' folder. && goto End)

set /p VersionId_txt=<"C:\CMDEX\Release\VersionId.txt"
set /p VersionIdUpdated_txt=<"C:\CMDEX\Release\VersionIdUpdated.txt"

echo.
echo Current version: %VersionId_txt%
echo New version: %VersionIdUpdated_txt%
echo.

if %VersionIdUpdated_txt% gtr %VersionId_txt% (goto UpdateCMDEXByZip) else (echo You are using the latest version. && echo. && echo.)
goto End

:UpdateCMDEXByInstaller
call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Release/CMDEXsetup.exe" -O "C:\CMDEX\Release\CMDEXsetup_new.exe"
if %errorlevel% neq 0 (echo Download fails. Check itself the 'update.bat' in 'Interfaces' folder. && goto End)

call del "C:\CMDEX\Release\CMDEXsetup_prev.exe"
call mv "C:\CMDEX\Release\CMDEXsetup.exe" "C:\CMDEX\Release\CMDEXsetup_prev.exe"
call mv "C:\CMDEX\Release\CMDEXsetup_new.exe" "C:\CMDEX\Release\CMDEXsetup.exe"

echo.
echo Warning: Files of "C:\CMDEX" will be overwritten.
echo Note: In case of updating, Reboot after installation is not required and can be skipped.
echo.

call pause

call "C:\CMDEX\Release\CMDEXsetup.exe"

echo Check whether installation is OK..
goto End

:UpdateCMDEXByZip
call wget --user-agent="Chrome" --no-check-certificate "https://rgladkyi.github.io/CMDEX/Release/CMDEXfolder.zip" -O "C:\CMDEX\Release\CMDEXfolder_new.zip"
if %errorlevel% neq 0 (echo Download fails. Check itself the 'update.bat' in 'Interfaces' folder. && goto End)

call del "C:\CMDEX\Release\CMDEXfolder_prev.zip"
call mv "C:\CMDEX\Release\CMDEXfolder.zip" "C:\CMDEX\Release\CMDEXfolder_prev.zip"
call mv "C:\CMDEX\Release\CMDEXfolder_new.zip" "C:\CMDEX\Release\CMDEXfolder.zip"

echo.
echo Warning: Files of "C:\CMDEX" will be overwritten.
echo.

call pause

set CD_TO_GO_BACK_update=%cd%

cd /d C:\

echo Updating...
md "%TEMP%\7z"

call cpd /y /q "C:\CMDEX\Tools\7z" "%TEMP%\7z"
call "%TEMP%\7z\7za.exe" x -aoa "C:\CMDEX\Release\CMDEXfolder.zip"

call rmdir /s /q "%TEMP%\7z" 

echo Note: May exist errors related to overwring,
echo and it's OK if no need to overwrite it's.

cd /d %CD_TO_GO_BACK_update%
goto End

:End
call cd /d %CURRENT_DIRECTORY_TO_COME_BACK%
goto Exit

:Exit

rem echo Deleting temporary copy.
rem echo.
rem call del "%TEMP%\cmdex_update_temp.bat"


