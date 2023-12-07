#!/usr/bin/env python3
# Script: Ops Challenge 09
# Author: Jasmine Pressley
# Date of last revision: 12/07/23
# Purpose: Python Conditionals  
# Resources: ChatGPT, Class DEMO.MD 09

# Entering team attributes for a competition
team_name = input("Enter your team's name: ")
team_members = int(input("Enter the number of team members: "))
team_score = int(input("Enter your team's current score: "))
challenge_difficulty = input("Specify the challenge difficulty (easy/hard): ").lower()
challenge_bonus = input("Does completing this challenge offer a bonus? (yes/no): ").lower() == "yes"

# Conditional statements based on the provided information

# If statement based on team size
if team_members >= 10:
    print(f"Welcome Team {team_name}! You have a strong team for this challenge.")
else:
    print(f"Team {team_name}, gather your strength; you have a smaller team for this challenge.")

# If-else statement based on current team score
if team_score >= 1000:
    print(f"Team {team_name} has an impressive score! High chances to ace this challenge.")
else:
    print(f"Team {team_name} has some ground to cover in this competition.")

# If-elif-else statement based on challenge difficulty
if challenge_difficulty == "easy":
    print(f"The challenge ahead for Team {team_name} seems manageable.")
elif challenge_difficulty == "hard":
    print(f"This challenge might push Team {team_name} to their limits.")
else:
    print(f"Team {team_name} is stepping into an unknown challenge.")

# Nested if statement checking for challenge bonus
if challenge_bonus:
    print(f"Completing this challenge will earn Team {team_name} a valuable bonus.")
    if team_score >= 1500:
        print(f"Team {team_name} has a shot at scoring big with the bonus.")
    else:
        print(f"Team {team_name}, the bonus might make a significant difference in your standings.")
else:
    print(f"Team {team_name}, focus on strategy; there's no bonus this time.")
