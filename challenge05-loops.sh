#!/bin/bash

# Script:                       challenge05-loops
# Author:                       Ethan Denny
# Date of latest revision:      1/29/21
# Purpose:                      Write a script that displays running processes, asks
#                               the user for a PID, then kills the process with that 
#                               PID.
#                               Also, use a loop somewhere

# Notes:



# Declare Variables

# Declare Functions

# Main

### This line displays all running processes
# https://alvinalexander.com/linux/unix-linux-process-memory-sort-ps-command-cpu/
ps -e --sort comm | less


### This line can capture input
read -p "Enter the PID of the process you would like to kill: " process_to_kill

### This line kills the process with the PID containted in the variable process_to_kill
kill $process_to_kill

echo "Process $process_to_kill killed"

#End