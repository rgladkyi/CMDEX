
set CD_TO_COME_BACK_create_zip_from_exe=%cd%
echo %CD_TO_COME_BACK_create_zip_from_exe%

call cd "%CMDEX_ROOT_DIR%\Release\"

rmdir /s /q "%CMDEX_ROOT_DIR%\Release\CMDEXfolder.zip"

call exe_unzip.bat CMDEXsetup.exe -oCMDEX 

rmdir /s /q "%CMDEX_ROOT_DIR%\Release\CMDEX\$PLUGINSDIR"

echo Add nessesary files from CMDEX root folder..
copy /y "%CMDEX_ROOT_DIR%\cmdex_install.bat" "\Release\CMDEX\"
copy /y "%CMDEX_ROOT_DIR%\doit.bat" "\Release\CMDEX\"
copy /y "%CMDEX_ROOT_DIR%\install.bat" "\Release\CMDEX\"
copy /y "%CMDEX_ROOT_DIR%\README.md" "\Release\CMDEX\"
copy /y "%CMDEX_ROOT_DIR%\License.txt" "\Release\CMDEX\"

call zip CMDEX

rmdir /s /q "%CMDEX_ROOT_DIR%\Release\CMDEX"

call mv CMDEX.zip CMDEXfolder.zip

cd %CD_TO_COME_BACK_create_zip_from_exe%




