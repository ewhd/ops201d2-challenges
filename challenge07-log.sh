#!/bin/bash

# Script:                       challenge07-logs.sh
# Author:                       Ethan Denny
# Date of latest revision:      2/2/21
# Purpose:                      
#           Output report about current system CPU and RAM performance
#           Assume that this script will be called with root privileges


### Main

# This bit uses grep to filter the results of lshw
# It calls separately for each search term so that I can configure grep to return
# the correct number of lines for each call to capture the relevant information
# (if there is a way to do this other than manually cofinguring grep, tell me)
# Additionally, messages are printed to identify the output
echo "This current system RAM:"
lshw | grep -A 3 "*-memory"
echo $"
This is the current system CPU:"
lshw | grep -A 6 "*-cpu"



# End