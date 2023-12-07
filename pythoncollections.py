# Script: Ops Challenge 06
# Author: Jasmine Pressley
# Date of last revision: 12/05/23
# Purpose: Python collection 
# Resources: ChatGPT 

#!/usr/bin/env python3

# List of ten string elements (fruits)
my_list = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon"]

# Printing the fourth element
print("Fourth element:", my_list[3])

# Printing sixth to tenth elements
print("Sixth to tenth elements:", my_list[5:])

# Changing the value of the seventh element
my_list[6] = "onion"
print("Updated list with 'onion':", my_list)

# Using various list methods
my_list.append("mango")
print("Appended 'mango':", my_list)

my_list.clear()
print("Cleared list:", my_list)

my_list = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon"]  # Reassigning the original list for further operations

new_list = my_list.copy()
print("Copied list:", new_list)

count = my_list.count("banana")
print("Count of 'banana':", count)

my_list.extend(["grape", "kiwi"])
print("Extended list:", my_list)

index = my_list.index("date")
print("Index of 'date':", index)

my_list.insert(2, "orange")
print("Inserted 'orange' at index 2:", my_list)

popped = my_list.pop()
print("Popped element:", popped)

my_list.remove("orange")
print("Removed 'orange':", my_list)

my_list.reverse()
print("Reversed list:", my_list)

my_list.sort()
print("Sorted list:", my_list)

# Creating a tuple, set, and dictionary
my_tuple = (1, 2, 3, 4, 5)
my_set = {1, 2, 3, 4, 5}
my_dict = {'a': 1, 'b': 2, 'c': 3}

print("Tuple:", my_tuple)
print("Set:", my_set)
print("Dictionary:", my_dict)
