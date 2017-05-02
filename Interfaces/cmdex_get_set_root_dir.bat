@echo off

if [%CMDEX_ROOT_DIR%]==[] (goto GetCMDEXRootDir) else (goto ReturnCMDEXRootDir)

:GetCMDEXRootDir
FOR /F "usebackq tokens=2,* skip=2" %%L IN (
    `REG QUERY "HKCU\Software\Conjeside\CMDEX" /v RootDirectory`
) DO SET REG_CMDEX_ROOT_DIR=%%M

rem echo %REG_CMDEX_ROOT_DIR%
if not exist %REG_CMDEX_ROOT_DIR% (goto End) else (set CMDEX_ROOT_DIR=%REG_CMDEX_ROOT_DIR%)
goto ReturnCMDEXRootDir

:ReturnCMDEXRootDir
rem set CMDEX_ROOT_DIR=%REG_CMDEX_ROOT_DIR%

:End


