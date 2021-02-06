# Script Name:             challenge10-system-process-analysis.ps1
# Author:                  Ethan Denny
# Date of last revision:   2/5/21
# Purpose:                 A collection of prescribed PowerShell operations

# Declare variables
# Declare functions
# Main

# Reference https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process?view=powershell-7

# Get a list of all active processes on the local computer

Get-Process

# Get all the Powershell processes in the current session

Get-Process pwsh

# Get all available data about one or more processes

Get-Process winword, explorer | Format-List *

# Sort the output of a commandlet by property

[commandlet] | Sort-Object -Property [property to sort by] -Descending

# How to initialize a process by its filepath

Start-Process -FilePath "C:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe"

# For loop syntax

for ($i = 1 ; $i -le 5 ; $i++)
{
    echo "Loop iteration number $i"
}



# This line prints to the terminal screen all active processes ordered by highest CPU time consumption at the top.

Get-Process | Sort-Object CPU -Descending


# This line prints to the terminal screen all active processes ordered by highest Process Identification Number at the top.

Get-Process | Sort-Object Id -Descending


# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5


# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

Start-Process iexplore.exe "https://owasp.org/www-project-top-ten/"
# Or
[System.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")


# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

for ($i = 1 ; $i -le 10 ; $i++)
{
    Start-Process iexplore.exe "https://owasp.org/www-project-top-ten/"
    Start-Sleep -Milliseconds 250
}

# Please note that this works on my system, but from talking to Cody this is just behaving in weird ways, so it may not for you.
# I also did a little experimenting, having the loop call only 3 times and adjusting the delay to narrow down the error range, and 
# with a delay of 250ms it produced 3 browsers, but a delay of 200ms produced only 2.
# My working theory is that there's a hack in windows/PowerShell to ignore any repeated Start-Process commands which are called too close together
# Think about it: how often is it not a mistake to open the same program multiple times? You could crash a system very quickly if you
# called iexplore.exe in an open-ended while-loop without such a safeguard 


# Close all Internet Explorer windows.

Stop-Process -Name iexplore -Force


# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

Get-Process iexplore | Select-Object Id 

# End