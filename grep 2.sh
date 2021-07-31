#!/bin/bash
#author: Jamie Hurd
# Use only pure Bourne syntax for portability with shell scripts!
# https://developer.apple.com/library/archive/documentation/OpenSource/Conceptual/ShellScripting/shell_scripts/shell_scripts.html


#Prompt for strings to search
read -p -r grepArr "Enter words to search separated by 'space' : "
#The -r switch appears to throw things off on Mac

#Iterate across the array of search criteria/strings
for i in "${grepArr[@]}"
do
#Call another bash to get the dir
source pathToDir.sh;
#Set global variables to control grep output location
OUTPUT_DIR="grep"
OUTPUT_FILE="grep.txt"

#Drill into each subdirectory of this parent up to six folders down
# Use a while loop to control the search
find . -maxdepth 6 -type d -print0 | while IFS= read -rd '' "$dir";
do echo "$i"  | grep  -inr " ${grepArr[*]}" | less -R > "${OUTPUT_FILE}"; done
mkdir "${OUTPUT_DIR}";
mv $OUTPUT_FILE "/$OUTPUT_DIR"
done
