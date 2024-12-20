# PowerShell Scripts for Cybersecurity  

This folder contains PowerShell scripts for automating security monitoring and incident response tasks. 
These were all done through my Information Security and Windows Server Admin classes. 
They were written in Powershell ISE with differing versions as my Server Admin class was on a VM with Windows Server OS 2019. 
Given that, some of these scripts may be outdated for new Powershell versions. 

## Scripts Included  

1. [Check_FailedLogins.ps1](Check_FailedLogins.ps1)  
   - Monitors failed login attempts from Windows Event Logs.  
2. [Port_Scanner.ps1](Port_Scanner.ps1)  
   - Scans a range of IP addresses for open ports.  
3. [Monitor_FileChanges.ps1](Monitor_FileChanges.ps1)  
   - Tracks file creation, modification, and deletion in a specified directory.  
4. [Check_FirewallRules.ps1](Check_FirewallRules.ps1)  
   - Lists active firewall rules and status.  
5. [Find_SuspiciousProcesses.ps1](Find_SuspiciousProcesses.ps1)  
   - Identifies suspicious processes running on the system.  


## How to Use  
- Run scripts in PowerShell with administrator privileges.  
- Follow comments and instructions within each script.  

## Requirements  
- Windows PowerShell 5.1 or higher.  
- Administrator permissions for certain tasks.  
