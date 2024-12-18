# Define the number of minutes to search
$TimeFrame = (Get-Date).AddMinutes(-15)

# Retrieve failed login events (Event ID 4625 - Account failed to log on)
$FailedLogins = Get-WinEvent -FilterHashtable @{
    LogName='Security';
    ID=4625;
    StartTime=$TimeFrame
} -ErrorAction SilentlyContinue | Select-Object -Property TimeCreated, Message

# Display results
Write-Host "Failed Login Attempts in the Last 15 Minutes:" -ForegroundColor Cyan
$FailedLogins | ForEach-Object {
    Write-Host "Time: $($_.TimeCreated)"
    Write-Host "Details: $($_.Message)" -ForegroundColor Yellow
    Write-Host "-------------------------------------------"
}
