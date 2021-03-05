#!/bin/bash

# Script Name: conditionals.sh (Challenge 04)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/4/21
# Purpose: Lets the user select a variety of commands to execute.


# Main

while true
do 

    # Provides the user with a menu system
    echo -e "Please select one of the following commands to execute:"
    echo -e "(1) Hello World"
    echo "(2) Ping self"
    echo "(3) Print IP info"
    echo "(4) Exit"
    read input

    if [ $input -eq 4 ]
    then
        echo -e "\nScript terminated."
        break
    fi

    echo -e "Executing command...\n"
    sleep 1.5

    if [ $input -eq 1 ]
    then
        echo "Hello world!"
    elif [ $input -eq 2 ]
    then
        ping -c 3 127.0.0.1
    elif [ $input -eq 3 ]
    then
        ip a 
    else
        echo "The command failed to execute because your input was invalid."
        sleep 1.5
        echo -e "\nPlease only enter a number between 1-4"
    fi

    echo ""
    sleep 1.5
done


# End