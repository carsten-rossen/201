#!/bin/bash

# Script Name:                  Hello World 
# Class Name:                   Ops 201
# Author Name:                  Carsten Rossen
# Date of latest revision:      1/26/21
# Purpose:                      Assigns network adapter info to variable 

# Declaration
net_info=$(lspci)

# Call
echo $net_info > output.txt