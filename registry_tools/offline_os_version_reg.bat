@echo off

rem This version tells you the version and the edition of Windows installed on the drive.
rem Note that this will only work if you are running the script from a Windows PE environment. 
rem It checks for OFFLINE registry hive, so it will not work if you are running this script on a normal Windows installation. If you want to check the version of the currently running Windows, use os_version_local.bat instead.
rem Check HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion if for some reason you want to check the version of the currently running Windows. Tho I run Windows 11 and it says Windows 10 Pro in the registry

reg load HKLM\OFFLINE C:\Windows\System32\Config\SOFTWARE
reg query "HKLM\OFFLINE\Microsoft\Windows NT\CurrentVersion" /v ProductName
reg unload HKLM\OFFLINE

pause>nul