#!/usr/bin/env bash
# File: makefile

README.md:
	touch README.md
	echo "# Project: Unix GuessingGame" >> README.md
	echo "The date and time at which make was run:" >> README.md
	echo "$$(date)" >> README.md
	echo "$$(stat -c %y makefile)" >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

