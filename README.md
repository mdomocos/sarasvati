# Sarasvati

# Installing
- As Administrator open a Powershell console
- navigate into the project folder
- run .\install.ps1

# Running
Before you start the project, make sure you configure it first:
- stt-ukr-docker-compose.yml
  - LICENSE - add your license key

- Open a Powershell console
  - run .\sarasvati.ps1

# Troubleshooting
  Issue: .\install.ps1 : File C:\Users\User\Desktop\sarasvati-main\sarasvati-main\install.ps1 cannot be loaded. The file
  C:\Users\user\Desktop\sarasvati-main\sarasvati-main\install.ps1 is not digitally signed. You cannot run this script
  on the current system. For more information about running scripts and setting execution policy, see
  about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.
  At line:1 char:1

  FIX: run in Powershell: Set-ExecutionPolicy Unrestricted