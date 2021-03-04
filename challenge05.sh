#!/bin/bash

# Script name:      Challenge05.sh
# Author:           Carsten Rossen
# Date:             1/29/21
# Purpose:          Displays PIDs, asks user for PID, kills process with that PID

# Declaration of variable
option="y"

# Main
while [ $option == "y" ]
do
    ps aux
    echo -e "\nPlease give the PID of the process you would like to kill:"
    read pid
    kill -9 $pid
    echo -e "\nKill another process? (y to continue / any other key to stop)"
    read option
done

# End