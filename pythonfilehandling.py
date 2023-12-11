#!/usr/bin/env python3
# Script:                       Ops Challenge 10
# Author:                       Jasmine Pressley
# Date of latest revision:      12/10/23
# Purpose:                      File Handling in Python

# Create a new .txt file
file_name = 'example.txt'

# Open the file in 'w+' mode to create it if it doesn't exist
with open(file_name, 'w+') as file:
    # Append three lines to the file
    file.write("This is line 1\n")
    file.write("This is line 2\n")
    file.write("This is line 3\n")

# Read and print the first line
with open(file_name, 'r') as file:
    first_line = file.readline()
    print("First line of the file:", first_line)

# Delete the file
import os
if os.path.exists(file_name):
    os.remove(file_name)
    print(f"File '{file_name}' has been deleted.")
else:
    print(f"File '{file_name}' does not exist.")
