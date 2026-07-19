@echo off

rem This script aims to find duplicate files in a specified directory and its subdirectories based on file size and hash values.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

set /p "directory=Enter the directory to search for duplicate files: "

if not exist "%directory%" (
    echo The specified directory does not exist.
    pause
    exit /b
)

rem Create a temporary file to store file information
set "tempFile=%temp%\file_info.txt"

rem Get file information (size and hash) and store it in the temporary file
for /r "%directory%" %%f in (*) do (
    certutil -hashfile "%%f" MD5 | find /v "certutil" | find /v "MD5" > nul
    if %errorlevel%==0 (
        for /f "tokens=*" %%h in ('certutil -hashfile "%%f" MD5 ^| find /v "certutil" ^| find /v "MD5"') do (
            echo %%~zf %%h %%f >> "%tempFile%"
        )
    )
)

rem Sort the temporary file and find duplicates
sort "%tempFile%" | findstr /r /c:"^.* .* .*" > "%temp%\sorted_file_info.txt"

rem Display duplicate files
echo Duplicate files found:
for /f "tokens=1,2,* delims= " %%a in ('type "%temp%\sorted_file_info.txt" ^| findstr /r /c:"^.* .* .*"') do (
    set "size=%%a"
    set "hash=%%b"
    set "file=%%c"
    if defined lastSize if defined lastHash (
        if "!size!"=="!lastSize!" if "!hash!"=="!lastHash!" (
            echo !file!
        )
    )
    set "lastSize=!size!"
    set "lastHash=!hash!"
)

set /p "choice=Do you want to delete the duplicate files? (Y/N): "
if /i "%choice%"=="Y" (
    for /f "tokens=1,2,* delims= " %%a in ('type "%temp%\sorted_file_info.txt" ^| findstr /r /c:"^.* .* .*"') do (
        set "size=%%a"
        set "hash=%%b"
        set "file=%%c"
        if defined lastSize if defined lastHash (
            if "!size!"=="!lastSize!" if "!hash!"=="!lastHash!" (
                del "!file!"
                echo Deleted: !file!
            )
        )
        set "lastSize=!size!"
        set "lastHash=!hash!"
    )
)
pause>nul