@echo off

REM Check Secure Boot Status
bcdedit /enum {current} | find "path" > nul
if %errorlevel%==0 (
    echo Secure Boot is enabled.
) else (
    echo Secure Boot is disabled or not supported.
)
pause>nul