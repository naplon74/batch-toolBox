@echo off

rem In this script we will stop the Windows Update service if it is running.
rem Windows Update is the display name it's service name is wuauserv.
rem Service name can be found opening services.msc and double clicking on the service.

rem CAUTION: Stopping services can have unintended consequences. Use this script with caution.

rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

sc query "wuauserv" | FIND /C "RUNNING"
   if %errorlevel%==0 (
      echo Windows Update service is running. Attempting to stop it...
      net stop "wuauserv"
   ) else (
      echo Windows Update service is not running.
   )

pause>nul