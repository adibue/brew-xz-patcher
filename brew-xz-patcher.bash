#!/bin/bash

# Variable for storing the current users name
currentUser=$(scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ { print $3 }')

# Check, where brew is installed
brewbin="$(/usr/bin/sudo -i -u "$currentUser" /usr/bin/which brew)"

if [ -z "$brewbin" ]
then
	echo "brew not found. Cancel..."
	exit 0
else
	# Run brew update and patch xz in user context
	/usr/bin/su "$currentUser" -c "$brewbin update" > /dev/null 2>&1
	/usr/bin/su "$currentUser" -c "$brewbin upgrade xz"
fi

exit 0
