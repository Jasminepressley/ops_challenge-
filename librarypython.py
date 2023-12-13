# Script: Ops Challenge 12
# Author: Jasmine Pressley
# Date of last revision: 12/12/23
# Purpose: Python request libary 
# Resources: ChatGPT 

import requests

def print_response_info(response):
    print("\nResponse Headers:")
    for header, value in response.headers.items():
        print(f"{header}: {value}")
    print("\nResponse Content:")
    print(response.text)

def main():
    destination_url = input("Enter the destination URL: ")
    http_methods = ["GET", "POST", "PUT", "DELETE", "HEAD", "PATCH", "OPTIONS"]
    
    print("Choose a HTTP Method:")
    for index, method in enumerate(http_methods, start=1):
        print(f"{index}. {method}")

    method_choice = int(input("Enter the number for your chosen method: "))
    selected_method = http_methods[method_choice - 1]

    print(f"\nRequest to be sent:\nURL: {destination_url}\nHTTP Method: {selected_method}")
    confirmation = input("Confirm sending the request? (yes/no): ")

    if confirmation.lower() == 'yes':
        response = requests.request(selected_method, destination_url)
        print_response_info(response)
    else:
        print("Request cancelled.")

if __name__ == "__main__":
    main()
