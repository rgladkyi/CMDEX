@echo off

echo Copy to disk drives G, E and F:
copy /y "C:\CMDEX\Release\VersionId.txt" G:\
copy /y "C:\CMDEX\Release\CMDEXsetup.exe" G:\
copy /y "C:\CMDEX\Release\CMDEXfolder.zip" G:\

copy /y "C:\CMDEX\Release\VersionId.txt" E:\
copy /y "C:\CMDEX\Release\CMDEXsetup.exe" E:\
copy /y "C:\CMDEX\Release\CMDEXfolder.zip" E:\

copy /y "C:\CMDEX\Release\VersionId.txt" F:\
copy /y "C:\CMDEX\Release\CMDEXsetup.exe" F:\
copy /y "C:\CMDEX\Release\CMDEXfolder.zip" F:\

set /p VersionId_txt=<"C:\CMDEX\Release\VersionId.txt"

call pause3

echo Press Ctrl+C if there is no need to commit this release.
call pause3

call git add "C:\CMDEX\Release\VersionId.txt"
call git add "C:\CMDEX\Release\CMDEXsetup.exe"
call git add "C:\CMDEX\Release\CMDEXfolder.zip" 
call git status
call git commit -m "Updated Installer to version %VersionId_txt%."

echo. 
echo Pushing the updated installer to git..
echo All is OK ?
echo. 

call pause3

call git pull
call git push


