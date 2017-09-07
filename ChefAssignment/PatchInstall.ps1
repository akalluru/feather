#Script: Nodesetup.ps1
#Downloading and installing the windows updates using the PSWindowsUpdate module
Install-Module PSWindowsUpdate

#Registering to use the Microsoft Update Service and not just the default Windows Update Service
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d

#Getting the updates and Installing them by ignoring the reboot post installation of patches
Get-WUInstall –MicrosoftUpdate –AcceptAll –IgnoreReboot

