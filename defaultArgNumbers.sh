#!/usr/bin/env bash
read -p "Favorite animal? [cat] " fav
if [[ -z $fav ]]; then
	echo "$fav was selected."
	fav="cat"
fi
echo "$fav was selected"
