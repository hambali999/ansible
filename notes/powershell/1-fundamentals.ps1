Write-Output "The date today is $(Get-Date)"
# Get-Service
# Get-Command -noun service
# Get-Service -Name WinRM
Write-Output "`nSelect-Object format"
Get-Service -Name WinRM | Select-Object -Property Name, Status 

Write-Output "`nName followed by status of the service"
(Get-Service -Name WinRM).Name
(Get-Service -Name WinRM).Status

Set-Location -Path C:\Users
Set-Location -Path C:\Users\ZZ03GY834\Desktop\ansible\ansible\notes\powershell


