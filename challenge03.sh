#!/bin/bash

# Script:                   Challenge 03                       
# Author:                   Carsten Rossen                    
# Date of latest revision:  1/27/21     
# Purpose:                  Prints the login history of users on this computer

# Declaration of Variables
logins="last"

# Declaration of functions
print_command () {
  $1
}

# Main
print_command $logins