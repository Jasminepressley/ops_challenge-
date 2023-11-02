# Script Name:                        batchscripting.sh
# Author:                             Jasmine Pressley
# Date of latest revision:            11/01/2023
# Purpose:                            Ops Challenge 08 - Windows Batch Scripting  
# Resources:                          ChaptGPT


#This command turns off the echoing of the command itself in the script's output
@echo off

#enables delayed variable expansion.
setlocal enabledelayedexpansion

#prompts the user to input a value
set /p sourcePath=Enter the source folder path:

#allows the user to input a value for the destinationPath variable.
set /p destinationPath=Enter the destination folder path:

#checks if a specified folder (represented by the variable !sourcePath!) exists, and if it doesn't exist, 
#it will display an error message and exit the script.

#checks if a specified folder (stored in the destinationPath variable) exists. 
#If the folder does not exist, it prints an error message to the console and exits the script. If the folder does exist, it continues with the rest of the script.
if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)

#checks if a specified folder (stored in the destinationPath variable) exists. If the folder does not exist, it prints an error message to the console and exits the script. If the folder does exist, it continues with the rest of the script.

if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)
# used to copy all files and directories, including empty ones, from the source folder to the destination folder in Windows. Replace 
robocopy "!sourcePath!" "!destinationPath!" /E

# checks the success or failure of a ROBOCOPY operation. If the operation encountered errors (exit code 8 or higher), it echoes an error message. 
#Otherwise, if the operation was successful (exit code less than 8), it echoes a success message.
if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
 #serves as a reference point for specific sections of the script. It doesn't perform any action on its own but is used for directing the flow of the script.
:end
#used to end a local environment established with "setlocal." It reverts to the previous state of variables and settings, effectively undoing changes made within the local environment
endlocal

 