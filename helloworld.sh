#!/bin/bash

# Script Name:                  helloworld
# Class Name:                   Ops 201
# Author Name:                  Ethan Denny
# Date of latest revision:      7/26/2020
# Purpose:                      fetch network adapter information and print it to output.exe

# What is a variable?
net_adapter_info=true

# Declaration
net_adapter_info=$(lspci)

# Call
echo $net_adapter_info > output.txt

# End