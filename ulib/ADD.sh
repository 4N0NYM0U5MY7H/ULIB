#!/bin/bash
#
#  August Frisk
#  CSCI 201-6093
#  ADD Script for BASH
#
#  UNIX Library
#  ADD: This program adds a record to the library file (U_LIB).
#       It asks the title, author, and category of the book. After adding
#       the information to the ULIB_FILE file,
#       it prompts the user for the next record.
#

answer=y # initialize the answer to indicate yes

while [ "$answer" = y ]; do # as long as the answer is yes
	tput clear
	tput cup 5 10
	echo "UNIX Library - ${BOLD}ADDMODE"
	echo "${NORMAL}"

	tput cup 7 23
	echo "Title:"
	tput cup 9 22
	echo "Author:"
	tput cup 11 20
	echo "Category:"
	tput cup 12 20
	echo "sys: system, ref: reference, tb: textbook"

	tput cup 7 30
	read title
	tput cup 9 30
	read author
	tput cup 11 30
	read category

	status=in # set the status to indicate book is in

	echo "$title:$author:$category:$status:$bname:$date" >>ULIB_FILE

	tput cup 14 10
	echo "Any more to add? (Y)es or (N)o> _\b\c"
	read answer

	case $answer in    # check user answer
	[Yy]*) answer=y ;; # any word starting with Y or y is yes
	*) answer=n ;;     # any other word indicates no
	esac               # end of the case construct

done # end of the while loop

exit 0 # end of the program
