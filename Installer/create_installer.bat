@echo off

echo.
echo Automation of installer creation.
echo.

call debug_disable.bat

call git status

call "%CMDEX_ROOT_DIR%\Installer\make_installer.bat"
call "%CMDEX_ROOT_DIR%\Release\create_zip_from_exe.bat"

call "%CMDEX_ROOT_DIR%\Data\clear_data.bat"
call "%CMDEX_ROOT_DIR%\Release\publish_release.bat"
call "%CMDEX_ROOT_DIR%\Release\post_release.bat"

echo.
rem echo Need wait couple of minutess while new release will be updated on the server.
rem echo And then press any key.
rem echo echo.
rem call "%CMDEX_ROOT_DIR%\Release\check_update.bat"


