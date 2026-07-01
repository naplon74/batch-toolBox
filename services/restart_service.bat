@echo off

rem In this script we will restart the Windows Update service if it is running.
rem Windows Update is the display name it's service name is wuauserv.
rem Service name can be found opening services.msc and double clicking on the service.

rem CAUTION: Restarting services can have unintended consequences. Use this script with caution.

rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.

sc query "wuauserv" | FIND /C "RUNNING"
   if %errorlevel%==0 (
      echo Windows Update service is running. Attempting to restart it...
      net stop "wuauserv"
      net start "wuauserv"
   ) else (
      echo Windows Update service is not running. Starting it...
      net start "wuauserv"
   )
pause>nul