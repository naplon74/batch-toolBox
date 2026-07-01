@echo off

rem In this exemple we will check if the Windows Update service is running or not.
rem Windows Update is the display name it's service name is wuauserv.
rem Service name can be found opening services.msc and double clicking on the service.

sc query "wuauserv" | FIND /C "RUNNING"
   if %errorlevel%==0 (
      echo Windows Update service is running.
   ) else (
      echo Windows Update service is not running.
   )
   
pause>nul

   