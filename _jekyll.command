#!/bin/bash

# Change for current directory
cd "$(dirname "$0")"
clear

# Check if Jekyll is installed and prompt for installation otherwise
if ! gem list jekyll -i > /dev/null 2>&1; then
	echo "Jekyll is not installed"
	read -p "Do you want to install it (Y/N)? "

	if [ "$(echo $REPLY | tr [:upper:] [:lower:])" == "y" ]; then
		echo ""
		echo "It may take a while to install all dependencies."
		sudo -p "The script must run with super-user privileges. Please enter your password: " gem install jekyll
		$0
		exit
	else
		exit
	fi
fi

# Ask what will please the user and launch the command
PS3="What do you want to do: "
options=("Build" "Build & watch" "Serve & watch")
select opt in "${options[@]}"
do
	case $opt in
		"Build")
			jekyll build
			break
		;;
		"Build & watch")
			jekyll build --watch
			break
		;;
		"Serve & watch")
			jekyll serve --watch
			break
		;;
		*)
			break
		;;
	esac
done