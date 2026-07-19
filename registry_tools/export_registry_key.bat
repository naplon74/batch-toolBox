@echo off

rem In this script we will export a registry key to a .reg file.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set "regKey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
set "exportFile=exported_key.reg"

reg export "%regKey%" "%exportFile%" /y
if %errorlevel%==0 (
    echo Registry key exported successfully to %exportFile%.
) else (
    echo Failed to export registry key.
)
pause