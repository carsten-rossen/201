# Script Name: Challenge 12 - PowerShell IP Analysis
# Class Name: Ops 201
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/9/21
# Purpose: Produce IPv4 information

# Variables

$pattern = 'IPv4'


# Functions

# Search the file for a specific pattern and print it
Function Search-File {
    Select-String -Path .\network_report.txt -Pattern $pattern
}


# Main

# Create a local file that holds information about the IP
ipconfig /all > network_report.txt

# Search and print the IPv4 address to the screen
Search-File

# Remove the local file that was created
Remove-Item .\network_report.txt


# End