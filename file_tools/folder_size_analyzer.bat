@echo off

rem This script will analyze the size of a specified folder and its subfolders.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "folderPath=Enter the full path of the folder to analyze: "
if not exist "%folderPath%" (
    echo The specified folder does not exist.
    pause
    exit /b
)

rem Calculate the total size of the folder and its subfolders
set "totalSize=0"
for /f "usebackq" %%A in (`dir "%folderPath%" /s /-c /a-d ^| findstr /r /c:"^[ ]*[0-9][0-9]*"`) do (
    set /a totalSize+=%%A
)

rem Convert total size to a more readable format (KB, MB, GB)
set "sizeInKB=%totalSize%"

set /a sizeInMB=sizeInKB/1024
set /a sizeInGB=sizeInMB/1024

echo Total size of the folder "%folderPath%" and its subfolders:
if %sizeInGB% gtr 0 (
    echo %sizeInGB% GB
) else if %sizeInMB% gtr 0 (
    echo %sizeInMB% MB
) else (
    echo %sizeInKB% KB
)
pause>nul