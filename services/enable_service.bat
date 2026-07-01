@echo off

rem In this script we will enable a service if it is disabled.

rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

sc query "service_name" | FIND /C "DISABLED"
   if %errorlevel%==0 (
      echo Service is disabled. Attempting to enable it...
      sc config "service_name" start= auto
   ) else (
      echo Service is not disabled.
   )
pause>nul
