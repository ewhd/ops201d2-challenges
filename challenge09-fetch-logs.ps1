# Script Name:             challenge09-fetch-logs.ps1
# Author:                  Ethan Denny
# Date of last revision:   2/4/21
# Purpose:                 Fetch useful system event logs

# Declare variables
# Declare functions



# These lines output all events from the System event log that occurred in the last 24 hours to a file on your desktop 
# named last_24.txt.
$last_24 = Get-EventLog -LogName System -After (Get-Date).AddDays(-1)
$last_24 > C:\Users\Ethan\Desktop\last_24.tx


# These lines output all “error” type events from the System event log to a file on your desktop named errors.txt.
$errors = Get-EventLog -LogName System -EntryType Error
$errors > C:\Users\Ethan\Desktop\errors.tx


# This line prints to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System -InstanceId 16


# This line prints to the screen the most recent 20 entries from the System event log.
Get-EventLog -LogName System -Newest 20


# This line prints to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full 
# lines are displayed (get rid of the … and show the entire text).
Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source


# Main
