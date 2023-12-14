# Script: Ops Challenge 13
# Author: Jasmine Pressley
# Date of last revision: 12/13/23
# Purpose: Ops Challenge: 13git 
# Resources: ChatGPT, Class Demo

# Define user details
$FirstName = "Franz"
$LastName = "Ferdinand"
$DisplayName = "$FirstName $LastName"
$Office = "Springfield, OR"
$Company = "Globex" # Changed company name to Globex
$Department = "TPS Department"
$Title = "TPS Reporting Lead"
$Email = "ferdi@GlobeXpower.com"
$Username = $FirstName.Substring(0,1).ToLower() + $LastName.ToLower()

# Check if the user exists, if so, delete
$existingUser = Get-ADUser -Filter {SamAccountName -eq $Username} -ErrorAction SilentlyContinue
if ($existingUser) {
    Remove-ADUser -Identity $Username -Confirm:$false
}

# Create user
New-ADUser -SamAccountName $Username -GivenName $FirstName -Surname $LastName -DisplayName $DisplayName -Office $Office -Company $Company -Department $Department -Title $Title -EmailAddress $Email -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true

# Verify user creation
Get-ADUser -Identity $Username
