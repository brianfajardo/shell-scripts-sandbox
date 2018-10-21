#! /bin/bash

# Description:
#   This script reads the file /etc/passwd line by line and prints the line number and line content.

LINE_NUMBER=1

while read LINE 
do
    echo "${LINE_NUMBER}: ${LINE}"
    ((LINE_NUMBER++)) # Increment variable by 1 
done < /etc/passwd # File being read