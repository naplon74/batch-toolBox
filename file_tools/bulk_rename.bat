@echo off

rem This script aims to bulk rename files in a specified directory based on user-defined criteria.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "directory=Enter the directory path where files are located: "
if not exist "%directory%" (
    echo The specified directory does not exist.
    pause
    exit /b
)

set /p "prefix=Enter the prefix to add to the files (leave blank for no prefix): "
set /p "suffix=Enter the suffix to add to the files (leave blank for no suffix): "

rem Loop through all files in the specified directory and rename them
for %%f in ("%directory%\*") do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    set "newname=%prefix%!filename!%suffix%!extension!"
    ren "%%f" "!newname!"
    echo Renamed: %%f to !newname!
)

pause>nul