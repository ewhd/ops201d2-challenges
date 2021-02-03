#!/bin/bash

# Script:                       challenge06-netcat.sh
# Author:                       Ethan Denny
# Date of latest revision:      2/1/21
# Purpose:     
#               Call for a target IP address from the user
#               A function prints all currently listening, well known ports of target computer
#               
# 


# Notes:
# "well known ports" means ports 0-1023


# Declare Variables

### This variable contains the IPv4 address of the target computer
target_ip=""



# Declare Functions

### This function finds all currently listening ports from 1-1023 on a computer and prints them
### It's first argument is the IPv4 address of the target computer
port_scan_fun() {
    nc -z -v $1 1-1023 2>&1 | grep succeeded
}

# Main

### This line gets a target IP from the user
read -p "Enter IPv4 address of target computer to scan for listening ports from 1-1023: " target_ip

### This line calls the function port_scan_fun() with the contents of variable target_ip as its argument
port_scan_fun $target_ip 


# End