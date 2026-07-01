@echo off

rem In this exemple we will start the Windows Update service if it is not running.
rem Windows Update is the display name it's service name is wuauserv.
rem Service name can be found opening services.msc and double clicking on the service.

rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

sc query "wuauserv" | FIND /C "RUNNING"
   if %errorlevel%==0 (
      echo Windows Update service is running.
   ) else (
      echo Windows Update service is not running. Attempting to start it...
      net start "wuauserv"
   )
pause>nul