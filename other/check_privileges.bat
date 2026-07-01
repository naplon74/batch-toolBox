@echo off

rem Use this script to check if the user has administrative privileges or not.

at > nul
if %ERRORLEVEL% EQU 0 (
    echo You are Administrator
) else (
    echo You are NOT Administrator.
    pause>nul
)