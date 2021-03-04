# Script Name: Challenge 13 - Bash Domain Analyzer
# Class Name: Ops 201
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/10/21
# Purpose: Saves domain information to a local file.

# Functions

# Takes a user generated domain name and saves information about the domain 
# to a local output.txt file using various bash commands.
save_domain_info () {
    echo -e "RESULTS OF whois COMMAND\n" > output.txt
    whois $domain_name >> output.txt
    echo -e "\n\nRESULTS OF dig COMMAND\n" >> output.txt
    dig $domain_name >> output.txt
    echo -e "\n\nRESULTS OF host COMMAND\n" >> output.txt
    host $domain_name >> output.txt
    echo -e "\n\nRESULTS OF nslookup COMMAND\n" >> output.txt
    nslookup $domain_name >> output.txt
}

# Main

# Prompt user for domain name. 
echo "Please enter a domain:"
read domain_name
save_domain_info

# Open the domain information in Libre Office Writer
libreoffice --writer output.txt

# End