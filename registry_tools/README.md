# Script that interacts with the Windows registry

## offline_os_version_reg.bat
#### Script that load the registry key that holds the Windows version and returns it. Works in both offline (PE) and online registry.* 

<p><i>*"Offline" registry often called PE stand for Preinstlation envirnoment, this is tipically a Windows instalation iso, its before you install the system. On the other hand an "online" registry is a fully installed Windows system.</i></p>

> [!NOTE]
> If you are looking for a simpler version for a full Windows instlation that doesnt use the registry see [os_version_local.bat](../system_info/README.md#os_version_local.bat).



---


## os_version_local.bat (put somewhere else)
#### Script that return the Windows version usefull if you want your project to run on modern Windows version. (Does not wirk in a PE* environment)
