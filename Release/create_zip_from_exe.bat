
set CD_TO_COME_BACK_create_zip_from_exe=%cd%
echo %CD_TO_COME_BACK_create_zip_from_exe%

call cd "C:\CMDEX\Release\"

rmdir /s /q "C:\CMDEX\Release\CMDEXfolder.zip"

call exe_unzip.bat CMDEXsetup.exe -oCMDEX 

rmdir /s /q "C:\CMDEX\Release\CMDEX\$PLUGINSDIR"

echo Add nessesary files from CMDEX root folder..
copy /y "C:\CMDEX\cmdex_install.bat" "C:\CMDEX\Release\CMDEX\"
copy /y "C:\CMDEX\doit.bat" "C:\CMDEX\Release\CMDEX\"
copy /y "C:\CMDEX\install.bat" "C:\CMDEX\Release\CMDEX\"
copy /y "C:\CMDEX\README.md" "C:\CMDEX\Release\CMDEX\"
copy /y "C:\CMDEX\License.txt" "C:\CMDEX\Release\CMDEX\"

call zip CMDEX

rmdir /s /q "C:\CMDEX\Release\CMDEX"

call mv CMDEX.zip CMDEXfolder.zip

cd %CD_TO_COME_BACK_create_zip_from_exe%




