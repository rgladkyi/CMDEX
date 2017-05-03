@echo off

set INSTALL_DIR=%1
if [%INSTALL_DIR%]==[] (echo Need to specify install directory as first parameter. && goto Error) else (goto SetInstallDir)

:SetInstallDir
call cmdex_add_settings_to_registry.bat %INSTALL_DIR%
call cmdex_get_set_root_dir.bat
goto DoInstall

:DoInstall
mkdir "%CMDEX_ROOT_DIR%\Aliases"
mkdir "%CMDEX_ROOT_DIR%\Automation"
mkdir "%CMDEX_ROOT_DIR%\Data"
mkdir "%CMDEX_ROOT_DIR%\Documentation"
mkdir "%CMDEX_ROOT_DIR%\History"
mkdir "%CMDEX_ROOT_DIR%\Installer"
mkdir "%CMDEX_ROOT_DIR%\Interfaces"
mkdir "%CMDEX_ROOT_DIR%\Release"
mkdir "%CMDEX_ROOT_DIR%\Resources"
mkdir "%CMDEX_ROOT_DIR%\TestCases"
mkdir "%CMDEX_ROOT_DIR%\Tools"
mkdir "%CMDEX_ROOT_DIR%\Trash"
mkdir "%CMDEX_ROOT_DIR%\Wall"



call "%CMDEX_ROOT_DIR%\Installer\TerminateRunningProcessesBeforeItsUpdate.bat"
call "%CMDEX_ROOT_DIR%\Interfaces\sudo.bat" "%CMDEX_ROOT_DIR%\Interfaces\cmdex_add_to_path.bat"
call "%CMDEX_ROOT_DIR%\Interfaces\cmdex_create_shortcuts.bat"

echo.
echo Completed.

pause
goto End

:End

:Error


