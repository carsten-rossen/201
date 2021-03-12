
#!/usr/bin/python3

# Script Name: Python Collections (Challenge 09)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/11/21
# Purpose: Creates a list and demonstrates some simple functions.

# Declaration of Variables
lst = []

# Main
for i in range(1, 11):
    lst.append(f"This is element {i}")

print("Printing element 4 of the list:")
print(lst[3])

print("\nPrinting elements 6-10 of the list:")
print(lst[5:])

lst[6] = "Onion"
print("\nPrinting final version of the list:")
print(lst)


# End