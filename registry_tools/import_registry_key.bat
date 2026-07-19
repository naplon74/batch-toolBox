@echo off

rem In this script we will import a registry key from a .reg file.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set "importFile=imported_key.reg"

reg import "%importFile%"
if %errorlevel%==0 (
    echo Registry key imported successfully from %importFile%.
) else (
    echo Failed to import registry key.
)
pause