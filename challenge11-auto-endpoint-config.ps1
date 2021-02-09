# Script Name:             challenge11-auto-endpoint-conf.ps1
# Author:                  Ethan Denny
# Date of last revision:   2/8/21
# Purpose:                 Automate the configuring of a new system by running this set of commands


### Main

# This line enables File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

# This line enables ICMP
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow

# This line enables Remote management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

# This line removes bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# This line enables Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# This line disables SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force


### End