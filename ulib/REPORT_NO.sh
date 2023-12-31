#!/bin/bash
#
#  August Frisk
#  CSCI 210-6093
#  REPORT_NO Script for BASH
#
#  UNIX Library
#  REPORT_NO: This program produces report from the ULIB_FILE file.
#             It checks for the report number passed to it on the
#             command line, sorts and produces reports accordingly.
#

IFS=":" # set delimiter to :

case $1 in                               # check the contents of the $1
1) sort -f -d -t : ULIB_FILE >TEMP ;;    # sort on title field
2) sort -f -d -t : +1 ULIB_FILE >TEMP ;; # sort on author field
3) sort -f -d -t : +2 ULIB_FILE >TEMP ;; # sort on category field
esac                                     # end of the case
#
# read records from the sorted file TEMP. Format and store them in
# PTEMP.
#
while read title author category status bname date; do # read a record

	echo "	Title: $title" >>PTEMP   # format title
	echo "	Author: $author" >>PTEMP # format author

	case $category in # check the category
	[Tt][Bb]) word=textbook ;;
	[Ss][Yy][Ss]) word=system ;;
	[Rr][Ee][Ff]) word=reference ;;
	*) word=undefined ;;
	esac

	echo "	Category: $word" >>PTEMP   # format category
	echo "	Status: $status\n" >>PTEMP # format status

	if [ "$status" = "out" ]; then         # if it is checked out
		echo " Checked out by:$bname" >>PTEMP # format bname
		echo "	Date:$date\n" >>PTEMP          # format date
	fi

	echo >>PTEMP

done <TEMP
#
#	ready to display the formatted records in the PTEMP
#
pg -c -p "Page %d:" PTEMP # display PTEMP page by page
rm TEMP PTEMP             # remove files

exit 0 # end of the program
