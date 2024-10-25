#!/usr/bin/env bash

if (($#<3)); then
	echo "This command requires three arguments:"
	echo "username, userid, and favorite number."
else
	echo "username: $1"
	echo "userid: $2"
	echo "favorite number: $3"
fi
