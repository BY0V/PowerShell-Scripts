# Define the IP range and port
$StartIP = 1
$EndIP = 5  # Adjust for your IP range
$Port = 80  # Port to scan (HTTP example)

# Scan IPs
Write-Host "Scanning for Open Ports on Port $Port..." -ForegroundColor Cyan
for ($i = $StartIP; $i -le $EndIP; $i++) {
    $IP = "192.168.1.$i"  # Adjust subnet
    $Connection = Test-NetConnection -ComputerName $IP -Port $Port -InformationLevel Quiet
    if ($Connection) {
        Write-Host "Port $Port is OPEN on $IP" -ForegroundColor Green
    } else {
        Write-Host "Port $Port is CLOSED on $IP" -ForegroundColor Red
    }
}
