#!/usr/bin/python3

# Script Name: Bash In Python (Challenge 06)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/8/21
# Purpose: Outputs some basic bash commands to the terminal.

import os

# Declaration of variables

whoami_command = os.system('whoami')
ipa_command = os.system('ip a')
lshw_command = os.system('lshw -short')


# Main

print(whoami_command)
print(ipa_command)
print(lshw_command)


# End