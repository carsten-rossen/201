#!/usr/bin/python3

# Script Name: Directory Creation (Challenge 07)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/9/21
# Purpose: 

# Import libraries
import os

# === All about os.walk ===
# In os.walk, root prints out directories only from what you specified
# In os.walk, dirs prints out sub-directories from root
# In os.walk, files prints out all files from root and directories

# Declaration of variables
path = input('Please enter a file path: ')

# Declaration of functions
def walk(path):
    for (root, dirs, files) in os.walk(path):
        ### Add a print command here to print ==root==
        print(root)
        ### Add a print command here to print ==dirs==
        print(dirs)
        ### Add a print command here to print ==files==
        print(files)

# Main
walk(path)

# End