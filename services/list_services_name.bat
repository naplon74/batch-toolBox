@echo off

sc queryex type=service state=all | find /i "SERVICE_NAME:"
echo.
echo This is a list of all services on this computer.
pause>nul