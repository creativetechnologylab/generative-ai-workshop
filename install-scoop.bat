@echo off

powershell "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
powershell "Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression"

pause