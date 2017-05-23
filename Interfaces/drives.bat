@echo off && call cmdex_pre_run.bat

echo.
call wmic logicaldisk get DriveType, FileSystem, Size, FreeSpace, DeviceId, VolumeName, Description


