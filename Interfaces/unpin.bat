@echo off

:Check
if [%1]==[] (goto UnpinPath) else (goto UnpinName)
goto End

:UnpinPath
set CD_UNWRAPPED_1=%cd::=_%
set CD_UNWRAPPED_2=%CD_UNWRAPPED_1:\=_%
set CD_UNWRAPPED_3=%CD_UNWRAPPED_2: =_%
set PATH_TO_UNPIN="C:\CMDEX\Wall\%CD_UNWRAPPED_3%.bat"

if exist %PATH_TO_UNPIN% (move %PATH_TO_UNPIN% "C:\CMDEX\Wall\Trash\")
goto End

:UnpinName
if exist "C:\CMDEX\Wall\%1.bat" (move "C:\CMDEX\Wall\%1.bat" "C:\CMDEX\Wall\Trash\") else (echo Not exist..)
goto End

:End


