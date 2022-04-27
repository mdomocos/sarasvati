Read-Host -Prompt "Press Enter to install Sarasvati. Make sure you run this script as an Administrator. Reboots will be required."
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy RemoteSigned
Write-Output "Enabling Containers Feature - Do not accept the restart."
Enable-WindowsOptionalFeature -Online -FeatureName containers -All
Write-Output "Enabling Hyper-V Feature - Do not accept the restart."
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Invoke-WebRequest -Uri "https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip" -UseBasicParsing -OutFile release.zip
Expand-Archive release.zip -DestinationPath "$Env:ProgramFiles\Linux Containers\."

Invoke-WebRequest https://download.docker.com/win/static/stable/x86_64/docker-20.10.14.zip -OutFile docker-20.10.14.zip

Expand-Archive docker-20.10.14.zip

Invoke-WebRequest https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Windows-x86_64.exe -UseBasicParsing -OutFile docker-compose.exe
Read-Host -Prompt "Installation is now complete, press ENTER to restart your computer."
Restart-Computer
