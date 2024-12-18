# List running processes
Write-Host "Checking for Suspicious Processes..." -ForegroundColor Cyan
$SuspiciousKeywords = @("cmd.exe", "powershell.exe", "wscript.exe", "cscript.exe", "malicious", "unknown")

# Filter processes
Get-Process | Where-Object {
    $SuspiciousKeywords | ForEach-Object { $_ -and ($_.Name -like "*$_*") }
} | Select-Object Name, Id, StartTime | Format-Table -AutoSize
