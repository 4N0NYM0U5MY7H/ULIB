#!/bin/bash
#
#  August Frisk
#  CSCI 210-6093
#  ULIB Script for BASH
#
#  UNIX Library
#  ULIB: This program is the main driver for the UNIX library application
#        program. It shows a brief startup message and the displays the
#        main menu.
#        It invokes the appropriate program according to the user selection.
#

BOLD=$(tput smso)   # store code for bold mode in BOLD
NORMAL=$(tput rmso) # store code for end of the bold mode in NORMAL
export BOLD NORMAL  # make them recognized by subshells
#
#  show the title and a brief message before showing the main menu
#
tput clear                                           # clear screen
tput cup 5 15                                        # place the cursor on line 5, column 15
echo "${BOLD}Super Duper UNIX Library"               # show the title in bold
tput cup 12 10                                       # place the cursor on line 12, column 10
echo "${NORMAL}This is the UNIX Library application" # the rest of the title
tput cup 14 10
echo "Please enter any key to continue..._\b\c"
read answer # read user input

error_flag=0 # initialize the error flag, indicating no error

while true; do # loop forever

	if [ $error_flag -eq 0 ]; then # check for the error
		tput clear                    # clear screen
		tput cup 5 10
		echo "UNIX Library - ${BOLD}MAIN MENU${NORMAL}"
		tput cup 7 20
		echo "0: ${BOLD}EXIT${NORMAL} this program"
		tput cup 9 20
		echo "1: ${BOLD}EDIT${NORMAL} Menu"
		tput cup 11 20
		echo "2: ${BOLD}REPORTS${NORMAL} Menu"

		error_flag=0 # reset error flag
	fi

	tput cup 13 10
	echo "Enter your choice> _\b\c"
	read choice # read user choice
	#
	#	case construct for checking the user selection
	#
	case $choice in # check user input
	0)
		tput clear
		exit 0
		;;
	1) EDIT ;;    # call EDIT program
	2) REPORTS ;; # call REPORT program
	*)
		ERROR 20 10 # call ERROR program
		tput cup 20 1
		tput ed      # clear the rest of the screen
		error_flag=1 # set error flag to indicate error
		;;
	esac # end of the case construct

done # end of the while construct

exit 0 # exit the program
