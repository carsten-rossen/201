# Script Name: Challenge 09
# Author: Carsten Rossen
# Date of last revision: 2/4/21
# Purpose: Outputs various arrangements of the System event log to text files or the screen.


# Main

# Outputs all events from the System event log that occurred in the last
# 24 hours to a file on the desktop named last-24.txt
Get-EventLog -LogName System -After (Get-Date).AddHours(-24) > C:\Users\first\Desktop\last_24.txt

# Outputs all 'error' type events from the System event log
# to a file on the desktop named errors.txt
Get-EventLog -LogName System -EntryType Error > C:\Users\first\Desktop\errors.txt

# Prints all events with ID 16 from the System event log
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

# Prints the most recent 20 entries from the System event log
Get-EventLog -LogName System -Newest 20

# Prints all sources of the 500 most recent entries in the System event log
Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source | Out-String -Width 500

# End
