#!/bin/bash
#Script Name:                         Loops.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            10/27/2023
# Purpose:                            Ops Challenge Class 05

while true; do
    # Display running processes
    echo "Currently running processes:"
    ps aux

    # Ask the user for a PID
    read -p "Enter the PID of the process to kill (or press Ctrl + C to exit): " pid

    # Check if the input is not empty
    if [ -n "$pid" ]; then
        # Kill the process with the specified PID
        if kill -9 "$pid" 2>/dev/null; then
            echo "Process with PID $pid has been killed."
        else
            echo "Failed to kill process with PID $pid. Please make sure the PID is valid."
        fi


    fi
done
  