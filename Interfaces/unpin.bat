@echo off

:Check
if [%1]==[] (goto UnpinPath) else (goto UnpinName)
goto End

:UnpinPath
set CD_UNWRAPPED_1=%cd::=_%
set CD_UNWRAPPED_2=%CD_UNWRAPPED_1:\=_%
set CD_UNWRAPPED_3=%CD_UNWRAPPED_2: =_%
set PATH_TO_UNPIN="%CMDEX_ROOT_DIR%\Wall\%CD_UNWRAPPED_3%.bat"

if exist %PATH_TO_UNPIN% (move %PATH_TO_UNPIN% "%CMDEX_ROOT_DIR%\Wall\Trash\")
goto End

:UnpinName
if exist "%CMDEX_ROOT_DIR%\Wall\%1.bat" (move "%CMDEX_ROOT_DIR%\Wall\%1.bat" "%CMDEX_ROOT_DIR%\Wall\Trash\") else (echo Not exist..)
goto End

:End


