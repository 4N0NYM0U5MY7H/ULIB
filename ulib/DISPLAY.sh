#!/bin/bash
#
#  August Frisk
#  CSCI 210-6093
#  DISPLAY Script for BASH
#
#  UNIX Library
#  DISPLAY: This program displays a specified record from the ULIB_FILE.
#	        It asks the Author/Title of the book, and displays the specified
#	        book is no found in the file.
#

OLD_IFS="$IFS" # save the IFS settings
answer=y       # initialize the answer to indicate yes

while [ "$answer" = y ]; do # as long as the answer is yes

	tput clear
	tput cup 3 5
	echo "Enter the Author/Title> _\b\c"
	read response

	grep -i "$response" ULIB_FILE >TEMP # find the specified book in the library

	if [ -s TEMP ]; then # if it is found
		IFS=":"             # set IFS to colon
		read title author category status bname date <TEMP

		tput cup 5 10
		echo "UNIX Library - ${BOLD}DISPLAYMODE${NORMAL}"
		tput cup 7 23
		echo "Title: $title"
		tput cup 8 22
		echo "Author: $author"

		case $category in # check the category
		[Tt][Bb]) word=textbook ;;
		[Ss][Yy][Ss]) word=system ;;
		[Rr][Ee][Ff]) word=reference ;;
		*) word=undefined ;;
		esac

		tput cup 9 20
		echo "Category: $word" # display the category
		tput cup 10 22
		echo "Status: $status" # display the status

		if [ "$status" = "out" ]; then
			tput cup 11 14
			echo "Checked out by: $bname"
			tput cup 12 24
			echo "Date: $date"
		fi

	else
		tput cup 7 10
		echo "$response not found"
	fi

	tput cup 15 10
	echo "Any more to look for? (Y)es or (N)o> _\b\c"
	read answer # read user's answer

	case $answer in    # check user's answer
	[Yy]*) answer=y ;; # any word staring with Y or y is yes
	*) answer=n ;;     # any other word indicates no
	esac               # end of the case construct

done # end the while loop

IFS="$OLD_IFS" # restore IFS to its original value

exit 0 # exit the program
