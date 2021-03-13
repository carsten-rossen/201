#!/usr/bin/python3

# Script Name: Python Conditional Statements (Challenge 10)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/12/21
# Purpose: Examines 3 variables, and prints the order of them from least to greatest.

# Declaration of Variables
a = 9
b = 9
c = 9

# Main
if a < c or b < c:
    if a == c:
        print('b is less than a and c, which are equal')
    elif b == c: 
        print('a is less than b and c, which are equal')
    elif a > c:
        print('b is less than c, and c is less than a')
    elif b > c:
        print('a is less than c, and c is less than b')
    else:
        if a < b:
            print('a is less than b, and b is less than c')
        elif b < a:
            print('b is less than a, and a is less than c')
        else:
            print('a and b are equal, and are both less than c')
elif a > c or b > c:
    if a == c:
        print('a and c are equal, and are both less than b')
    elif b == c:
        print('b and c are equal, and are both less than a')
    else:
        if a < b:
            print('c is less than a, and a is less than b')
        elif b < a:
            print('c is less than b, and b is less than a')
        else:
            print('c is less than b and a, which are equal')
else:
    print('a, b, and c are equal')


# End