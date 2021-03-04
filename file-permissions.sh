#!/bin/bash

# Script Name: file-permissions.sh (Challenge 03)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/3/21
# Purpose: Modifies permissions of a specified directory using chmod.


# Functions

change_path () {
    echo "Please name the directory path:"
    read dirpath
    cd $dirpath
    echo -e "\nYou are now in the '${PWD##*/}' directory."
    
    echo "Would you like to continue with this directory? (y/n)"
    read answer
    if [ $answer == 'n' ]
    then
        echo ""
        change_path
    fi
}

change_permissions () {
    echo -e "\nPlease supply a permissions number:"
    read permissions_num
    chmod -R $permissions_num ./
    
    echo -e "\nHere are the new permissions:\n"
    ls -al | grep -

    echo -e "\nWould you like to change the permissions again? (y/n)"
    read change_permission_again
    if [ $change_permission_again == 'y' ]
    then
        change_permissions
    fi
}


# Main

change_path

echo -e "\nHere are the permissions of the files in this directory:\n"
ls -al | grep -

change_permissions


# End