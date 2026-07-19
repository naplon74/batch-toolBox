@echo off

rem This script aim to calculate the MD5 hash of a file.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "filePath=Enter the full path of the file to calculate MD5 hash: "
if not exist "%filePath%" (
    echo The specified file does not exist.
    pause
    exit /b
)

rem Calculate the MD5 hash using certutil
certutil -hashfile "%filePath%" MD5
pause>nul
