# Check firewall status
Write-Host "Windows Firewall Status:" -ForegroundColor Cyan
(Get-NetFirewallProfile) | Select-Object Name, Enabled | Format-Table -AutoSize

# List active inbound rules
Write-Host "`nActive Inbound Firewall Rules:" -ForegroundColor Yellow
Get-NetFirewallRule -Direction Inbound -Enabled True | Select-Object DisplayName, Action | Format-Table -AutoSize
