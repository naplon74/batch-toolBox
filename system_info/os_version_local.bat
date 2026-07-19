@echo off

rem This will just tells you the Windows version WindowsPE is running on. So pretty useless I admit. I guess it can be used to check if you are running on Windows 10 or 11, but that is about it. I will probably remove this file in the future.
rem Version table can be found here https://learn.microsoft.com/en-us/windows/win32/sysinfo/operating-system-version
setlocal

rem Get full VER output 
for /f "delims=" %%A in ('ver') do set "FULLVER=%%A"

rem Extract version numbers (tokens 4 and 5 "Microsoft Windows [Version 10.0.19044.1706]" -> VERSION=10.0)
for /f "tokens=4-5 delims=. " %%i in ('ver') do set "VERSION=%%i.%%j"

rem Show original Windows version string
echo %FULLVER%
echo.

rem Detect version using extracted value
if "%VERSION%"=="10.0" (
    echo Detected: Windows 10 / 11 / Server 2016+
)

if "%VERSION%"=="6.3" (
    echo Detected: Windows 8.1 / Server 2012 R2
)

if "%VERSION%"=="6.2" (
    echo Detected: Windows 8 / Server 2012
)

if "%VERSION%"=="6.1" (
    echo Detected: Windows 7 / Server 2008 R2
)

if "%VERSION%"=="6.0" (
    echo Detected: Windows Vista
)

if "%VERSION%"=="5.2" (
    echo Detected: Windows XP x64 / Server 2003
)

if "%VERSION%"=="5.1" (
    echo Detected: Windows XP
)

if "%VERSION%"=="5.0" (
    echo Detected: Windows 2000
)

if not defined VERSION (
    cls
    echo Unknown Windows version
)

echo.
endlocal
pause>nul