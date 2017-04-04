@echo off

echo.
call wmic logicaldisk get DriveType, FileSystem, Size, FreeSpace, DeviceId, VolumeName, Description


