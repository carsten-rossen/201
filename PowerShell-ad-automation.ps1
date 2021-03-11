# Script Name: Bash and Powershell (Challenge 08)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/10/21
# Purpose: Create a new user in the active directory with:
# name, account name, office, email, department, and title parameters.

# Main

New-ADUser -Name "Franz Ferdinand" -SamAccountName "f.ferdinand" -GivenName "Franz" -Surname "Ferdinand" -Office "GlobeX USA Springfield, OR" -Department "TPS" -OtherAttributes @{'title'="TPS Reporting Lead";'mail'="ferdi@GlobeXpower.com"}

# End
