Read-Host -Prompt "Press Enter to install Sarasvati. Make sure you run this script as an Administrator. Reboots will be required."
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-ExecutionPolicy RemoteSigned
Read-Host -Prompt "Enabling Containers Feature - Do not accept the restart."
Enable-WindowsOptionalFeature -Online -FeatureName containers –All
Read-Host -Prompt "Enabling Hyper-V Feature - When asked, restart your computer. Run this script again after the restart."
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All
wsl --install

Invoke-WebRequest -Uri "https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip" -UseBasicParsing -OutFile release.zip
Expand-Archive release.zip -DestinationPath "$Env:ProgramFiles\Linux Containers\."

Invoke-WebRequest https://download.docker.com/win/static/stable/x86_64/docker-20.10.14.zip -OutFile docker-20.10.14.zip

Expand-Archive docker-20.10.14.zip

Invoke-WebRequest https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Windows-x86_64.exe -UseBasicParsing -OutFile docker-compose.exe
Read-Host -Prompt "Press Enter to exit"
