#!/usr/bin/env bash

# A three-in-one game

# The game definitions
guess() {
	local -i mynumber=$(( 1 + RANDOM % 10 ))
	read -rp "I'm thinking of a number between 1 and 10. What do you think it is?" the guess
	if (( theguess == mynumber )); then
		echo "You got it! Why are you psychic?"; echo
	else
		echo "Nope. I was thinking of $mynumber. Try again"; echo
	fi
	sleep 1
	choosegame
}

flip() {
	local -i mynumber=$(( 1 + RANDOM % 2 ))
	if (( mynumber == 1 )); then
		local face="HEADS"
	else
		local face="TAILS"
	fi
	printf "I flipped a coin and it  was: %s\n\n" $face
	sleep 1
	choosegame
}

dice() {
	local -i mynumber=$(( 1 + RANDOM % 6 ))
	local -i mynumber2=$(( 1 + RANDOM % 6 ))
	printf "I rolled two dice and the results are: %s and %s. \n\n" $mynumber $mynumber2
	sleep 1
	choosegame
}

choosegame() {
	select game in "Guessing Game" "Flip a Coin" "Dice Roll" "Exit"
	do
		case $game in
			"Guessing Game") guess;;
			"Flip a Coin") flip;;
			"Dice Roll") dice;;
			"Exit") exit;;
			*) echo "Please choose from the menu.";;
		esac
	done
}

case $1 in
	"guess") guess;;
	"flip") flip;;
	"dice") dice;;
	*) choosegame;;
esac
