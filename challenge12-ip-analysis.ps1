# Script Name:               challenge12-ip-analysis.ps1
# Author:                    Ethan Denny
# Date of last revision:     2/9/21
# Purpose:                   Write a Powershell script that quickly dumps the IPv4 address of the computer, 
#                            using at least one variable and one function


### Define Variables
$IPvar = $null


### Define Functions

# This function collect data from ipconfig, temporarily stores it in a text file on the desktop, uses Select-String 
# to find the IPv4 address, prints it, then removes the remporary file.
Function Get-IPstring {
    ipconfig /all > "network_report.txt"
    $script:IPvar = Select-String -Path "network_report.txt" -Pattern IPv4
    rm "network_report.txt"
}


### Main

Get-IPstring

echo $IPvar


# For the record, this is all kludgy and I don't like it.
# In messing around with the stipulated variable and function, I made it break 
# a lot in ways that I didn't understand, and that bothers me, because it means
# that I don't /really/ know how/why this works.

# I also don't like that it returns multiple IPv4 addresses stripped of their 
# context, but it does what the assignment asked it to so there.


### End

