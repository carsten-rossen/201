# Script Name: clear-logs.sh (Challenge 05)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/5/21
# Purpose: Clears the contents of /var/log/syslog and /var/log/wtmp 
# NOTE: This script can only be run as root user. 


# Declaration of Functions

print_logs () {
    echo -e "Printing /var/log/syslog...\n"
    sleep 1
    cat /var/log/syslog
    echo -e "\nDone.\n"
    
    echo -e "Printing /var/log/wtmp...\n"
    sleep 1
    cat /var/log/wtmp
    echo -e "\nDone.\n"
}


# Main

print_logs

cat /dev/null > /var/log/syslog
cat /dev/null > /var/log/wtmp
echo -e "\n\nClearing logs...Done\n"

print_logs

echo -e "\nDone."


# End
