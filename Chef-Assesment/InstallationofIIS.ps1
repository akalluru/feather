#Installing IIS as windows feature
Install-WindowsFeature -Name "Web-Server" -IncludeAllSubFeature

#Open firewall port 80
netsh advfirewall firewall add rule name="Open Port 80" dir=in action=allow protocol=TCP localport=80

#creating the site icons

Import-Module WebAdministration
New-Item -type directory -path c:\iis\icons
New-Website -Name "icons" -Port 80 -PhysicalPath c:\iis\icons -ApplicationPool "ASP.NET v4.0"
