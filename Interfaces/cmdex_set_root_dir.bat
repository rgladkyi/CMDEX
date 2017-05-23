rem @echo off && call cmdex_pre_run.bat

:SetCMDEXRootDir
FOR /F "usebackq tokens=2,* skip=2" %%L IN (
    `REG QUERY "HKCU\Software\Conjeside\CMDEX" /v RootDirectory`
) DO SET REG_CMDEX_ROOT_DIR=%%M

echo %REG_CMDEX_ROOT_DIR%
if not exist %REG_CMDEX_ROOT_DIR% (goto End) else (set CMDEX_ROOT_DIR=%REG_CMDEX_ROOT_DIR%)
goto ReturnCMDEXRootDir

:ReturnCMDEXRootDir
rem set CMDEX_ROOT_DIR=%REG_CMDEX_ROOT_DIR%
pause

:End


