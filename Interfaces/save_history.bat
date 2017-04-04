@echo off

set CURRENT_HISTORY_FILE="C:\CMDEX\History\%DATE:/=_% %TIME::=_%.log"

echo Current history of executed commands saved to: %CURRENT_HISTORY_FILE%.

call doskey /history >> %CURRENT_HISTORY_FILE%


