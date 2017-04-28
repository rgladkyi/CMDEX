@echo off

:Check
if "%*"=="" (goto SaveAsPath) else (goto SaveAsName)
goto End

:SaveAsPath
set CD_UNWRAPPED_1=%cd::=_%
set CD_UNWRAPPED_2=%CD_UNWRAPPED_1:\=_%
set CD_UNWRAPPED_3=%CD_UNWRAPPED_2: =_%

set PATH_TO_SAVE="%CMDEX_ROOT_DIR%\Wall\%CD_UNWRAPPED_3%.bat"

if not exist %PATH_TO_SAVE% (echo call c "%cd%" >> %PATH_TO_SAVE%)

goto End

:SaveAsName
if "%2"=="" (goto SaveNameCd) else (goto SaveNameCommand)

:SaveNameCd
if not exist "%CMDEX_ROOT_DIR%\Wall\%1.bat" (echo call c "%cd%" >> "%CMDEX_ROOT_DIR%\Wall\%1.bat") else (echo Dublicated..)
goto End


:SaveNameCommand
if not exist "%CMDEX_ROOT_DIR%\Wall\%1.bat" (echo %cd%\%2 %3 %4 %5 %6 %7 %8 %9 >> "%CMDEX_ROOT_DIR%\Wall\%1.bat") else (echo Dublicated..)
goto End

call dir "%CMDEX_ROOT_DIR%\Wall\"
goto End

:End


