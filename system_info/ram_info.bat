@echo off

wmic memorychip get BankLabel, Capacity, MemoryType, TypeDetail, Speed
pause>nul

rem BankLabel: The ram slot (RAM slot #0)
rem Capacity: The capacity of the RAM in bytes.
rem MemoryType: The type of RAM, I assume it refer to DDR4 etc, but it display "2" for my DDR5 so not sure. 
rem TypeDetail: Additional details about the RAM type.
rem Speed: The speed of the RAM in MHz. I found this online but it display nothing for my DDR5 RAM, so not sure what it is supposed to display. I will probably remove this in the future if I find out what it is supposed to display.

rem Note: There is probably more argument for this wmic command, but I don't know what they are. 
rem If you know, please let me know. I will probably add them in the future if I find out what they are.
rem Or make a pull request on GitHub if you know what they are.
