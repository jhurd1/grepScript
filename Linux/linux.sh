#!/bin/bash
#author: Jamie Hurd

#Prompt for strings to search
read -p -r grepArr "Enter words to search separated by 'space' : "

#Iterate across the array of search criteria/strings
for i in "${grepArr[@]}"
do

#Set global variables to control grep output location
OUTPUT_DIR="grep"
OUTPUT_FILE="grep.txt"

#Drill into each subdirectory of this parent up to six folders down
find . -maxdepth 6 -type d -print0 | while IFS= read -rd '' dir;
do echo "$i"  | grep  -inr " ${grepArr[*]}" | less -R > "${OUTPUT_FILE}"; done
mkdir "${OUTPUT_DIR}";
mv $OUTPUT_FILE "/$OUTPUT_DIR"
done