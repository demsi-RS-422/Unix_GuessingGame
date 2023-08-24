#!/usr/bin/env bash
# File: guessinggame.sh

CURRENT_DIR_ALL_FILES() {
        file_number=$(ls -l | egrep "^-" | wc -l)
        echo "$file_number"
}

echo "Welcome to the guessing-game."
echo "How many files are in the current directory?"

while true
do
        files=$(CURRENT_DIR_ALL_FILES)

        echo "Type in your guess and press Enter:"
        read response

        if [[ $response -lt $files ]]
        then
                echo "Your guess is too low. Try again:"
        elif [[ $response -gt $files ]]
        then
                echo "Your guess is too high. Try again:"
        elif [[ $response -eq $files ]]
        then
                echo "Congratulations! That is correct!"
                echo "In this directory is/are $files file(s). Thanks for playing!"
                break
        else
                echo "This does not count as a number. Try again."
        fi
done
