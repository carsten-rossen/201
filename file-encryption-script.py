#!/usr/bin/python3

# Script Name: File Encryption Script (Challenge 06)
# Class Name: Ops 401
# Author Name: Carsten Rossen
# Date of Latest Revision: 4/13/21
# Purpose: Encrypts and decrypts files and strings

# Import libraries

from cryptography.fernet import Fernet
import os


# declare functions

# displays menu screen
def menu():
    print("SELECTION MENU:")
    print("   1. Encrypt a file")
    print("   2. Decrypt a file")
    print("   3. Encrypt a message")
    print("   4. Decrypt a message")
    print("   5. Encrypt a folder")
    print("   6. Decrypt a folder")
    return input("\nInput option: ")

# encrypts file
def encrypt_file(path):
    with open(path, 'rb') as file:
        original = file.read()
    
    encrypted = f.encrypt(original)

    with open(path, 'wb') as encrypted_file:
        encrypted_file.write(encrypted)

# decrypts file
def decrypt_file(path):
    with open(path, 'rb') as encrypted_file:
        encrypted = encrypted_file.read()

    decrypted = f.decrypt(encrypted)

    with open(path, 'wb') as decrypted_file:
        decrypted_file.write(decrypted)

# encrypts string
def encrypt_string(msg):
    print("Ciphertext is ", f.encrypt(msg.encode()))

# decrypts string
def decrypt_string(msg):
    message = str.encode(msg)
    print("Plaintext is ", f.decrypt(message))

# generates a new key and saves it to a file
def write_key():
    key = Fernet.generate_key()
    with open("key.key", "wb") as key_file:
        key_file.write(key)

# loads a previously generated key
def load_key():
    return open("key.key", "rb").read()

# directs script to perform the specified function, 
# or to reinitiate the menu screen if an improper option was entered
def direct(option):
    if option == 1 or option == 2:
        path = input('Please specify full file path: ')

        if option == 1:
            encrypt_file(path)
        else:
            decrypt_file(path)

    elif option == 3 or option == 4:
        msg = input('Please specify the full message: ')

        if option == 3:
            encrypt_string(msg)
        else: 
            decrypt_string(msg)

    elif option == 5 or option == 6:
        path = input("Please specify the full folder path: ")

        if option == 5:
            encrypt_folder(path)
        else:
            decrypt_folder(path)

    else:
        print('Please print a number corresponding to an option (or CTRL + C to quit): ')
        option = menu()
        direct(int(option))

# Encrypts the entire contents of a folder
def encrypt_folder(path):
    for (path,dirs,files) in os.walk(path):
        for file in files:
            print("Encrypting", file)
            encrypt_file(str(os.path.join(path,file)))

# Decrypts the entire contents of a folder
def decrypt_folder(path):
    for (path,dirs,files) in os.walk(path):
        for file in files:
            print("Decrypting", file)
            decrypt_file(str(os.path.join(path,file)))


# Main

write_key()
key = load_key()

# initialize the Fernet class
f = Fernet(key)

# get a user option
option = menu()

# perform desired option
direct(int(option))


# End

