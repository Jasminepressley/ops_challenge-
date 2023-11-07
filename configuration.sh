# Script Name:                        configuration.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            11/06/2023
# Purpose:                            Ops Challenge 11- Automated Endpoint Configuration
# Resources:                          Goolge Doc (https://docs.google.com/document/d/19PbBtp2lPFwb1hCFAB1nNFuz4kxyrbnlwJCTHL0mWbI/edit?usp=sharing)
# Worked on this with following team mates included in Google Doc




#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

#Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 

#Enable Remote management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

#Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false