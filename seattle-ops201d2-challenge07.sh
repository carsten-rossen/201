#!/bin/bash

# Script:                       Challenge 07                 
# Author:                       Carsten Rossen
# Date of latest revision:      2/2/21
# Purpose:                      Outputs information about CPU, RAM, Display Adapter, and Network Adapter

# Main
# Output computer name
echo -e "The name of this computer is: $(hostname)\n"

# Ask user if they want to quit program
echo "Would you like to see system information? ('n' to quit, any other key to continue)"
read decision
if [ $decision == "n" ]
then
    exit
fi

# Print CPU information
echo -e "\n\nCPU INFORMATION:"
sudo lshw | grep -A4 "description: CPU" | tail -n4
sudo lshw | grep -A10 "description: CPU" | tail -n1

# Print RAM information
echo -e "\n\nRAM:"
sudo lshw | grep -A1 "description: System Memory"
sudo lshw | grep -A3 "description: System Memory" | tail -n1

# Print Display Adapter information
echo -e "\n\nDISPLAY ADAPTER:"
sudo lshw | grep -A11 "display" | tail -n10

# Print Network Adapter information
echo -e "\n\nNETWORK ADAPTER:"
sudo lshw | grep -A13 -m1 "description: Ethernet"

# End