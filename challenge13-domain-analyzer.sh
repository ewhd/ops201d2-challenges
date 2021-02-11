#!/bin/bash

# Script:                       challenge13-domain-analyzer.sh
# Author:                       Ethan Denny
# Date of latest revision:      2/10/21
# Purpose:                      
#           A bash script that asks a user to type a domain, then displays information about the typed domain
#           Uses whois, dig, host, and nslookup


### Define Variables


### Define Functions


# This line gets a string of input from the user and stores it in the variable target_domain
read -p "Enter the domain name you would like information about: " target_domain

# These lines creates a txt file to store the output
filename="$target_domain""_profile.txt"
touch $filename

# This function takes two parameters: a domain name and a file location
# then it calls nslookup, host, dig, and whois on the domain and appends their outputs to the file
compile_domain_profile() {

    # nslookup
    echo $"**********   Output from 'nslookup' on $1   **********

    " >> $2
    nslookup $1 >> $2

    # host
    echo $"

    **********   Output from 'host' on $1   **********

    " >> $2
    host  $1 >> $2

    # dig
    echo $"

    **********   Output from 'dig' on $1   **********

    " >> $2
    dig  $1 >> $2

    # whois
    echo $"
    
    **********   Output from 'whois' on $1   **********

    " >> $2
    whois $1 >> $2

}



compile_domain_profile $target_domain $filename

# This line opens the txt file with LibreOffice Writer
nano $filename
# LibreOffice $filename


### End