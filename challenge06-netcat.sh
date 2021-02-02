#!/bin/bash

# Script:                       challenge06-netcat.sh
# Author:                       Ethan Denny
# Date of latest revision:      2/1/21
# Purpose:     
#               Call for a target IP address from the user
#               A function prints all currently listening, well known ports of target computer
#               

# Scan localhost for port 22
nc -z -v 127.0.0.1 22

# Notes:
# "well known ports" means ports 0-1023


# Declare Variables

### This variable contains the IPv4 address of the target computer
target_ip=""

### This array contains the port number from 0-1023 on which the computer with IPv4 
### address $target_ip is listening
listening_ports=()

# Declare Functions

### This function prints all currently listening ports between 0-1023 on the computer 
### with IPv4 address $target_ip and appends them to the array listening_ports
### It calls target_ip as an argument
port_scan_fun() {



}

# Main

### This line gets a target IP from the user
read "Enter IPv4 address of target computer to scan for listening ports from 0-1023: " target_ip

### This line calls the function port_scan_fun() 
port_scan_fun target_ip


# End