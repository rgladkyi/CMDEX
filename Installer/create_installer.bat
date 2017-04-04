@echo off

echo.
echo Automation of installer creation.
echo.

call debug_disable.bat

call git status

call C:\CMDEX\Installer\make_installer.bat
call C:\CMDEX\Release\create_zip_from_exe.bat

call C:\CMDEX\Data\clear_data.bat
call C:\CMDEX\Release\publish_release.bat

call echo.
call Need wait couple of minutess while new release will be updated on the server.
call And then press any key.
call echo.
call C:\CMDEX\Release\check_update.bat


