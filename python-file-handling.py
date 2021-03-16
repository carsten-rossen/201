#!/usr/bin/python3

# Script Name: Python File Handling (Challenge 11)
# Class Name: Ops 301
# Author Name: Carsten Rossen
# Date of Latest Revision: 3/15/21
# Purpose: Creates, edits, and deletes a text file with Python


# Import libraries
# Used to delete the file at the end
import os


# Declaration of variables
# Creates new file to write to
new_file = open('newfile.txt', 'w')


# Main
# Asks user to specify how many lines the new file should have
while True:
    iterations = input("\nHow many lines would you like to append to the new file? ")
    if not iterations.isdigit():
        print('Please only use a positive number.')
    else:
        break

# Asks user for input to append to new file
for i in range(int(iterations)):
    append = input(f'\nAppend number {i+1} of {iterations}\n')
    new_file.write(append)
    if i + 1 < int(iterations):
        new_file.write('\n')

# appends the file and opens it in read mode
new_file.close()
new_file = open('newfile.txt', 'r')
content = new_file.readlines()

# Asks the user which lines they would like to read
while True:
    line_num = input('\nPrint which line you would like to read? ')
    if not line_num.isdigit():
        print(f'Please only enter a number between 1 and {iterations}.')
    elif int(line_num) <= 0 or int(line_num) > int(iterations):
        print(f'Please only enter an integer between 1 and {iterations}.')
    else:
        print(f'Printing line {line_num} of {iterations}\n')
        print(content[int(line_num) - 1])
        decision = input("\nWould you like to read another line? ('n' to quit, anything else to continue) ")
        if decision == 'n':
            break

# Deletes the file
os.remove('newfile.txt')


# End
