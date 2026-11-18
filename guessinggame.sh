#!/usr/bin/env bash
# guessinggame.sh
# Asks the user to guess how many files are in the current directory.

# Function: return the number of files in the current directory
count_files() {
    ls -1 | wc -l | tr -d ' '
}

# Function: check that the input is a whole number
is_number() {
    [[ $1 =~ ^[0-9]+$ ]]
}

actual=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the user guesses correctly
while true
do
    read -p "Enter your guess: " guess

    if ! is_number "$guess"
    then
        echo "That's not a valid number. Please enter a whole number."
    elif [[ $guess -lt $actual ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $actual ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed it: there are $actual files."
        break
    fi
done
