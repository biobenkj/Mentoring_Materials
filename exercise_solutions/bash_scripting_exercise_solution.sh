#!/bin/bash

#This is the shell script to do the desired manipulations to many_files folder

#1. Edit all of the file names to something else (your choice)

echo "Changing to file directory"
FILES=/Users/ben/Git_Repos/Mentoring_Materials/exercise_solutions/test/
cd $FILES

echo "Initiating counter"
COUNTER=1

echo "Processing files..."
for files in `ls *_file_*`; do
	MYFILENAME=my_new_filename-
	NEWFILENAME=${MYFILENAME}${COUNTER}.txt
	mv -v "$files" "$NEWFILENAME"
	((COUNTER+=1))
done   

echo "Done renaming and adding extension to files"

echo "Getting files 20-50"

COUNTER=1
for files in my_new_filename-{1..1000}; do
	if [ $COUNTER -ge 20 ] && [ $COUNTER -le 50 ]; then
		echo "Regular expressions are the worst." > ${file}  
	fi
	((COUNTER+=1))
done
