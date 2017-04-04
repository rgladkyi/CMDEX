@echo off

echo To execute in: "%cd%"
echo Planned to execute: %*

call sudo.lnk /c run_externally "%cd%" %*


