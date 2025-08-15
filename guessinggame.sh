#!/bin/bash

function file_count {
    echo $(ls -1 | wc -l)
}

echo "Guess how many files are in the current directory?"

file_count=$(file_count)
guess=-1

while [[ $guess -ne $file_count ]]
do
    read -p "Enter your guess: " guess
    if [[ $guess -lt $file_count ]]; then
        echo "Too low! Try again"
    elif [[ $guess -gt $file_count ]]; then
        echo "Too high! Try again"
    else
        echo "Congratulations! That's the right answer. Bye "
    fi
done

