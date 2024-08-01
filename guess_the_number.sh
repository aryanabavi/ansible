#!/bin/bash

counter=0

echo 'You will have three attempts to guess the correct number. If you guess incorrectly, I will think of a new number.'

while (( counter < 3 ))
do
	number=$(( ( RANDOM % 10 ) + 1 ))
	read -p 'What number between 1 and 10 am I thinking of?' guess_number

	if (( guess_number == number ))
	then
		echo 'Your guess was correct!'
		break
	else
		echo 'Your guess was incorrect. Please try again.'
	fi
	((counter++))	
done

if (( counter >= 3 ))
then
	echo 'Your three attempts have been exhausted. Game over.'
fi

