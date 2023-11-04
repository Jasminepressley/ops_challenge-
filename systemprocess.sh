# Script Name:                        Systemprocess.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            11/3/2023
# Purpose:                            Ops Challenge - System Process Commands

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
# for "Chrome"
Start-Process "chrome" -ArgumentList "https://owasp.org/www-project-top-ten/"
# for "Microsoft Edge"
Start-Process "msedge" -ArgumentList "https://owasp.org/www-project-top-ten/"

#Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}

#Close all instances of the Notepad. Use Stop-Process cmdlet.
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }


#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.


# Replace "chrome" with "msedge" if you want to kill Microsoft Edge instead
$processName = "chrome"
$process = Get-Process -name $processName -ErrorAction SilentlyContinue

if ($process) {
    $processId = $process.Id
    Stop-Process -Id $processId -Force
    Write-Host "Successfully killed $processName with PID $processId."
} else {
    Write-Host "$processName is not running on this system."
}






