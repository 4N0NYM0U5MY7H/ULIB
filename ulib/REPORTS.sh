#!/bin/bash
#
#  August Frisk
#  CSCI 210-6093
#  REPORTS Script for BASH
#
#  UNIX Library
#  REPORTS: This program is the main driver for the REPORTS menu.
#           It shows the reports menu and invokes the appropriate
#           program according to the user selection.
#

error_flag=0 # initialize the error flag, indicating no error

while true; do # loop forever

	if [ $error_flag -eq 0 ]; then # check for the error
		tput clear
		tput cup 5 10 # clear the screen and place the cursor
		echo "UNIX Library - ${BOLD}REPORTSMENU${NORMAL}"
		tput cup 7 20 # place the cursor
		echo "0: ${BOLD}RETURNS{NORMAL} To The Main Menu"
		tput cup 9 20
		echo "1: Sorted by ${BOLD}TITLES ${NORMAL}"
		tput cup 11 20
		echo "2: Sorted by ${BOLD}AUTHOR ${NORMAL}"
		tput cup 13 20
		echo "3: Sorted by ${BOLD}CATEGORY ${NORMAL}"
	fi

	error_flag=0 # reset error flag

	tput cup 17 10
	echo "Enter your choice> _\b\c"
	read choice # read user choice
	#
	#	case construct for checking the user selection
	#
	case $choice in   # check user input
	0) exit 0 ;;      # return to the main menu
	1) REPORT_NO 1 ;; # call REPORT_NO program, passing 1
	2) REPORT_NO 2 ;; # call REPORT_NO program, passing 2
	3) REPORT_NO 3 ;; # call REPORT_NO program, passing 3
	*)
		ERROR 20 10 # call ERROR program
		tput cup 20 1
		tput ed      # clear the rest of the screen
		error_flag=1 # set error flag to indicate error
		;;
	esac # end of the case construct

done # end of the while construct

exit 0 # end of the program
