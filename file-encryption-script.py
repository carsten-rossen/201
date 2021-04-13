#!/usr/bin/python3

# Script Name: File Encryption Script (Challenge 06)
# Class Name: Ops 401
# Author Name: Carsten Rossen
# Date of Latest Revision: 4/12/21
# Purpose: 

from cryptography.fernet import Fernet

def menu():
    print("SELECTION MENU:")
    print("   1. Encrypt a file")
    print("   2. Decrypt a file")
    print("   3. Encrypt a message")
    print("   4. Decrypt a message")
    return input("\nInput option: ")

def encrypt_file(path):
    with open(path, 'rb') as file:
        original = file.read()
    
    encrypted = f.encrypt(original)

    with open(path, 'wb') as encrypted_file:
        encrypted_file.write(encrypted)

def decrypt_file(path):
    with open(path, 'rb') as encrypted_file:
        encrypted = encrypted_file.read()

    decrypted = f.decrypt(encrypted)

    with open(path, 'wb') as decrypted_file:
        decrypted_file.write(decrypted)

def encrypt_string(msg):
    print(f.encrypt(msg))

def decrypt_string(msg):
    print(msg.decode('utf-8'))

def write_key():
    key = Fernet.generate_key()
    with open("key.key", "wb") as key_file:
        key_file.write(key)

def load_key():
    return open("key.key", "rb").read()

def direct(option)
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

    else:
        print('Please print a number corresponding to an option (or CTRL + C to quit): ')
        option = menu()
        direct(option)


write_key()
key = load_key()
f = Fernet(key)

option = menu()
direct(option)




