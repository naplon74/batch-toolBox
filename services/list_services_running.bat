@echo off

sc queryex type=service state=active
echo.
echo This is a list of running services on this computer.
pause>nul