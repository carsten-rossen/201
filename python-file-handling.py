#!/usr/bin/python3

# Script Name: Python File Handling (Challenge 11)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/15/21
# Purpose: Creates, edits, and deletes a text file

# Declaration of variables

new_file = open('newfile.txt', 'w')


# Main
while True:
    iterations = input("\nHow many lines would you like to append to the new file? ")
    if not iterations.isdigit():
        print('Please only use a positive number.')
    else:
        break

for i in range(int(iterations)):
    append = input(f'\nAppend number {i+1} of {iterations}\n')
    new_file.write(append)
    if i + 1 < iterations:
        new_file.write('\n')

content = new_file.readlines()

while True:
    line_num = input('\nPrint which line you would like to read? ')
    if not line_num.isdigit():
        print(f'Please only enter a number between 1 and {iterations}.')
    elif int(line_num) < 0 and int(line_num) > iterations:
        print(f'Please only enter a number between 1 and {iterations}.')
    else:
        print(f'Printing line {line_num} of {iterations}\n')
        print(content[int(line_num) - 1])
        decision = input("\nWould you like to read another line? ('n' to quit)"
        if True:
            break
    
