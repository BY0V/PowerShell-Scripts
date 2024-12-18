# Define the directory to monitor
$Path = "C:\Users\Public\TestFolder"  # Replace with your desired directory
$Watcher = New-Object System.IO.FileSystemWatcher
$Watcher.Path = $Path
$Watcher.IncludeSubdirectories = $true
$Watcher.EnableRaisingEvents = $true

# Define actions for file changes
$Action = {
    $FileType = $Event.SourceEventArgs.ChangeType
    $FilePath = $Event.SourceEventArgs.FullPath
    Write-Host "[$FileType] $FilePath" -ForegroundColor Green
}

# Register events
Register-ObjectEvent $Watcher "Created" -Action $Action
Register-ObjectEvent $Watcher "Changed" -Action $Action
Register-ObjectEvent $Watcher "Deleted" -Action $Action

Write-Host "Monitoring file changes in $Path. Press Enter to stop..." -ForegroundColor Cyan
Read-Host
