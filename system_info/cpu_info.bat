@echo off

wmic cpu get caption, deviceid, name, numberofcores, numberoflogicalprocessors, maxclockspeed, status
pause>nul

rem Caption: The model of the CPU (Manufacturer information, generation).
rem DeviceID: The device ID of the CPU.
rem Name: The name of the CPU.
rem NumberOfCores: The number of cores in the CPU.
rem NumberOfLogicalProcessors: The number of logical processors in the CPU.
rem MaxClockSpeed: The maximum clock speed of the CPU in MHz.
rem Status: The status of the CPU (OK, Degraded, Error).

rem Note: There is probably more argument for this wmic command, but I don't know what they are. 
rem If you know, please let me know. I will probably add them in the future if I find out what they are.
rem Or make a pull request on GitHub if you know what they are.
