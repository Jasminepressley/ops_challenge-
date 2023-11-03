# Script Name:                        powershell.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            11/2/2023
# Purpose:                            Ops Challenge - Log Retrieval via Powershell
# Resources:                          Chat GPT/https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/write-eventlog?view=powershell-5.1



#Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -After (Get-Date).AddDays(-1) | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"

#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -ErrorLevel Error | Out-File "$env:USERPROFILE\Desktop\errors.txt"

#Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize

#Print to the screen the most recent 20 entries from the System event log.’
Get-WinEvent -LogName 'System' -MaxEvents 20 | Format-Table -Property TimeCreated, Id, Message -AutoSize

#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -Wrap -AutoSize




