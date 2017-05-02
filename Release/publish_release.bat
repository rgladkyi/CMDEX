@echo off

echo Copy to disk drives G, E and F:
copy /y "%CMDEX_ROOT_DIR%\Release\VersionId.txt" G:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXsetup.exe" G:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXfolder.zip" G:\

copy /y "%CMDEX_ROOT_DIR%\Release\VersionId.txt" E:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXsetup.exe" E:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXfolder.zip" E:\

copy /y "%CMDEX_ROOT_DIR%\Release\VersionId.txt" F:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXsetup.exe" F:\
copy /y "%CMDEX_ROOT_DIR%\Release\CMDEXfolder.zip" F:\

set /p VersionId_txt=<"%CMDEX_ROOT_DIR%\Release\VersionId.txt"

call pause3

echo Press Ctrl+C if there is no need to commit this release.
call pause3

call git add "%CMDEX_ROOT_DIR%\Release\VersionId.txt"
call git add "%CMDEX_ROOT_DIR%\Release\CMDEXsetup.exe"
call git add "%CMDEX_ROOT_DIR%\Release\CMDEXfolder.zip" 
call git status
call git commit -m "Updated Installer to version %VersionId_txt%."

echo. 
echo Pushing the updated installer to git..
echo All is OK ?
echo. 

call pause3

call git pull
call git push


