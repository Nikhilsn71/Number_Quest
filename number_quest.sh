#!/bin/bash

# Generate a random number between 1 and 100
number=$(( ( RANDOM % 100 ) + 1 ))

# Welcome message
echo "Welcome to the Guess the Number game!"
echo "I have chosen a number between 1 and 100."
echo "Can you guess what it is?"

# Loop until the correct number is guessed
while true; do
  # Read input from the user
  read -p "Your guess: " guess

  # Check if the guess is higher or lower than the number
  if [[ $guess -lt $number ]]; then
    echo "Too low. Try again."
  elif [[ $guess -gt $number ]]; then
    echo "Too high. Try again."
  else
    echo "Congratulations! You guessed the number."
    break
  fi
done
