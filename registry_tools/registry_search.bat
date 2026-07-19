@echo off

rem This script will search for a specific registry key or value in the Windows registry.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "searchKey=Enter the registry key or value to search for: "

reg query HKLM /f "%searchKey%" /s > nul 2>&1
if %errorlevel%==0 (
    echo The registry key or value "%searchKey%" was found in the registry.
) else (
    echo The registry key or value "%searchKey%" was not found in the registry.
)
pause