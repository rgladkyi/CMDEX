@echo off

if ["%CMDEX_ROOT_DIR%"]==[] (call cmdex_get_set_root_dir.bat)

call c "%CMDEX_ROOT_DIR%\Interfaces"


