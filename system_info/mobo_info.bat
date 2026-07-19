@echo off

wmic baseboard get Manufacturer, Model, Name, PartNumber, serialnumber, Version
pause>nul

rem Manufacturer: The manufacturer of the motherboard.
rem Model: The model of the motherboard.
rem Name: The name of the motherboard.
rem PartNumber: The part number of the motherboard. (Not sure if this is the same as the model number or not, but I think it is.)
rem SerialNumber: The serial number of the motherboard.
rem Version: The version of the motherboard.