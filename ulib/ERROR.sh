#!/bin/bash
#
#  August Frisk
#  CSCI 210-6093
#  ERROR Script for BASH
#
#  UNIX Library
#  EDIT: This program displays an error message and waits for user
#        input to continue. It displays the message at the specified
#        row and column.
#

tput cup $1 $2                          # place the cursor on the screen
echo "Wrong Input. Try again."          # display the error message
echo "Press an key to continue..._\b\c" # display the prompt
read answer                             # read user input
exit 0                                  # indicate normal exit
