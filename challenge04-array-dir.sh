#!/bin/bash

# Script:                       array dir
# Author:                       Ethan Denny
# Date of latest revision:      1/28/21
# Purpose:                      To create 4 directories, put the directories in an 
#                               array, then uses that array to creat a text file in 
#                               each directory

# Declare global variables

dir_names=("dir1" "dir2" "dir3" "dir4")
dir_paths=()


# Main

### Create 4 directories from dir_names
mkdir ${dir_names[*]}

### Store their paths as strings in array dir_paths
for i in $(ls -d */)
do 
    dir_paths+=($(pwd)/$i)
done

### Create a new .txt file in each directory path in dir_paths
for d in ${dir_paths[@]}
do
    touch $d/new.txt
done


# Testing: the following prints the contents and subcontents in a tree-like format
# must be installed with:
#       sudo apt install tree
# tree .

# Cleanup -- optional
### Delete the directories and .txt files created above
# rm -r ${dir_names[@]}


# End
