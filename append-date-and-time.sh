# Script Name: Append; Date and Time (Challenge 02)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/2/21
# Purpose: Copies the 'syslog' file to the current working directory; appends the date and time to the file name and the file

# Variables

month=`date +%m`
day=`date +%d`
year=`date +%Y`
hour=`date +%H`
minute=`date +%M`
second=`date +%S`

datetime="$month.$day.$year-$hour:$minute:$second"


# Main

cp /var/log/syslog ./"syslog ($datetime)"

echo $datetime >> ./"syslog ($datetime)"

# End
