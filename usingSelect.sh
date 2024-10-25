#!/usr/bin/env bash

select animal in "bird" "dog" "fish" "quit"
do
	case $animal in
		bird) echo "Birds like to fly.";;
		dog) echo "Dogs like to play catch.";;
		fish) echo "Fish like to swim.";;
		quit) break;;
		*) echo "I'm not sure what that is."
	esac
done
