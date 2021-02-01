#!/bin/bash

# Script name:      Challenge 06
# Author:           Carsten Rossen
# Date:             2/1/21
# Purpose:          Searches for ports on a target computer.

# Functions
print_ports () {
    if [ $2 == 'all' ]
    then
        key="${1}"
    elif [ $2 == 'closed' ]
    then
        key="failed"
    elif [ $2 == 'open' ]
    then
        key="succeeded"
    else
        echo "Please enter commands exactly as specified."
        echo "Terminating script... Done."
        exit
    fi
    scan=$(nc -z -v ${1} 1-1023 2>&1 | grep $key)
    if [ "$scan" == "" ]
    then
        echo "There are no ${2} well-known ports for this computer (IP: ${1})."
    else
        echo "$scan"
    fi
}

# Main
echo -e "Hello, this script prints the status of well-known ports of the targeted computer.\n"
echo "Please type the target computer's IP address and hit enter:"
read ip
echo -e "\nWhat type of ports would you like to search for? ('open', 'closed', 'all')"
read status_type
echo -e "\nScanning for $status_type ports of target computer (IP: $ip)\n"
print_ports $ip $status_type

# End