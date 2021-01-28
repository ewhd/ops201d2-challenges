#!/bin/bash

# Script:                       challenge-03-login-history
# Author:                       Ethan Denny
# Date of latest revision:      2021-01-27
# Purpose:                      Print the login history of users on this computer, 
#                               using a function and accepting a parameter


# *** Variables: ***

# This variable is a username, which will be passed to the function print_login_history_fun
var_user_name="ewhd"

# *** Functions: ***

# This function will print the login history for a given user
print_login_history_fun () {
    echo "This function prints the login history of any user on this computer"
    echo "You have asked for the login history of $1:"
    echo $(last $1)
}

print_login_history_fun $var_user_name