@echo off

sc queryex type=service state=inactive
echo.
echo This is a list of stopped services on this computer.
pause>nul