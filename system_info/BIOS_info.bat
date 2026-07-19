@echo off

wmic BIOS get Caption, ReleaseDate, Version, SerialNumber, Manufacturer, SmbiosBiosVersion
pause>nul

rem Caption: The model of the BIOS (Manufacturer information, generation).
rem ReleaseDate: The release date of the BIOS in YYYYMMDDHHMMSS format.
rem Version: The version of the BIOS? Display INTEL for me, kinda make sense since I have an Intel CPU, but not sure if this is the version of the BIOS or the CPU.
rem SerialNumber: The serial number of the BIOS.
rem Manufacturer: The manufacturer of the BIOS.
rem SmbiosBiosVersion: Same output as Caption, but without " - XXXXXX" at the end. I assume this is the version of the BIOS, but not sure.

rem Note: There is probably more argument for this wmic command, but I don't know what they are.
rem If you know, please let me know. I will probably add them in the future if I find out what they are.
rem Or make a pull request on GitHub if you know what they are.