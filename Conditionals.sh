#!/bin/bash

# Script Name:                        Conditionals 
# Author:                             Jasmine Pressley
# Date of latest revision:            10/30/2023
# Purpose:                            Create a script that detects if a file or directory exists, then creates it if it does not exist.
                                      #Your script must use at least one array, one loop, and one conditional.


# Array of files and directories to check
files_and_dirs=("my_file.txt" "/my_directory")

# Loop through the array
for file_or_dir in "${files_and_dirs[@]}"; do

  # Conditional to check if the file or directory exists
  if [ ! -e "$file_or_dir" ]; then

    # Create the file or directory if it does not exist
    if [ -d "$file_or_dir" ]; then
      mkdir "$file_or_dir"
    else
      touch "$file_or_dir"
    fi

    # Echo a message to indicate that the file or directory was created
    echo "Created '$file_or_dir'."
  else
    # Echo a message to indicate that the file or directory already exists
    echo "'$file_or_dir' already exists."
  fi

done