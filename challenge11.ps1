# Script Name: Challenge 11
# Class Name: Ops 201
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/9/21
# Purpose: Automated Endpoint Configuration

# Main

# Enables file and printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

# Enable ICMP
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

# Enable remote management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

# Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1, and insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force