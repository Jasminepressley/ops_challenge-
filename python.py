# Script: Ops Challenge 06
# Author: Jasmine Pressley
# Date of last revision: 12/04/23
# Purpose: Bash in Python 

import os

# Define variables
user = os.getenv('USER')
current_dir = os.getcwd()
home_dir = os.path.expanduser('~')

# Print variables
print("User:", user)
print("Current Directory:", current_dir)
print("Home Directory:", home_dir)

# Execute bash commands
bash_commands = [
    'whoami',
    'ip a',
    'lshw -short'
]

for command in bash_commands:
    print("\nExecuting command:", command)
    os.system(command)
