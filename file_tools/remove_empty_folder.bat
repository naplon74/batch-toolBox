@echo off

rem This script will remove empty folders from a specified directory and its subdirectories.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "targetDir=Enter the directory path to remove empty folders from: "
if not exist "%targetDir%" (
    echo The specified directory does not exist.
    pause
    exit /b
)

rem Find and remove empty folders
for /f "delims=" %%d in ('dir "%targetDir%" /ad /s /b ^| sort /r') do (
    rd "%%d" 2>nul
)
echo Finished removing empty folders from "%targetDir%".
pause>nul