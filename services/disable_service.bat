@echo off

rem In this script we will disable a service if it is enabled.
rem For obvious reasons I will not target a specific service since they are all mostly used by Wndows.


rem CAUTION: Disabling services can have unintended consequences. Use this script with caution.
rem NOTE: This script requires administrative privileges to run successfully. Make sure to run it as an administrator. See other/check_privileges.bat for more.
rem If you really wish to test this script then try it with the fax service. It is a service that is not used by most people and can be disabled without any issues.

sc query "service_name" | FIND /C "RUNNING"
   if %errorlevel%==0 (
      echo Service is running. Attempting to disable it...
      sc config "service_name" start= disabled
   ) else (
      echo Service is not running.
   )