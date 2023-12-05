# Script: Ops Challenge 06
# Author: Jasmine Pressley
# Date of last revision: 12/05/23
# Purpose: Directory Creation
# Resources: ChatGPT 

#!/usr/bin/env python3

# Import libraries
import os

# Declaration of variables
user_path = input("Enter the directory path: ")

# Declaration of functions
def generate_directory_info(directory_path):
    for (root, dirs, files) in os.walk(directory_path):
        print(f"==root==")
        print(root)
        print(f"==dirs==")
        print(dirs)
        print(f"==files==")
        print(files)

# Main
if __name__ == "__main__":
    generate_directory_info(user_path)

