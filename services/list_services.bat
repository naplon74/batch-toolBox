@echo off

sc queryex type=service state=all
echo.
echo This is a list of all services and their details on this computer.
pause>nul
