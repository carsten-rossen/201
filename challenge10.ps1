# Script Name: Ops 201 Challenge 10
# Author: Carsten Rossen
# Date of last revision: 2/5/21
# Purpose: A quick overview of System Process Commands in PowerShell.

# Main

# Prints all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property CPU -Descending

# Prints all active processes ordered by highest Process Identification Number at the top
Get-Process | Sort-Object -Property id -Descending

# Prints the top five active processes ordered by highest Working Set at the top
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

# Opens a new Internet Explorer window to the website listed below
[System.Diagnostics.Process]::Start('iexplore','https://owasp.org/www-project-top-ten/')

# Starts Internet Explorer ten times to owasp.org/www-project-top-ten/
for ($i = 1 ; $i -le 10 ; $i++)
{
    [System.Diagnostics.Process]::Start('iexplore.exe','https://owasp.org/www-project-top-ten/')
}

# Closes all Internet Explorer windows
Get-Process iexplore | Stop-Process

# Kills the process with ID number 1112
Stop-Process -Id 1112

# End
