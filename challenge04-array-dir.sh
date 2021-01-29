#!/bin/bash

# Script:                       array dir
# Author:                       Ethan Denny
# Date of latest revision:      1/28/21
# Purpose:                      To create 4 directories, put the directories in an 
#                               array, then uses that array to creat a text file in 
#                               each directory

# Declare global variables
files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

directory_array=("dir1" "dir2" "dir3" "dir4")

# Declare functions

# Main
mkdir --verbose
