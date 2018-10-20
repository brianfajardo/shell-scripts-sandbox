#! /bin/bash

# Accepting user input (STDIN)
# read -p "Enter the name of a file or directory:" FILE

# Accepting user input as positional argument
# FILE=$1
FILES=$@

for FILE in $FILES
do
    if [ -d $FILE ]
    then
        echo "${FILE} exists and is a directory."
    elif [ -f $FILE ]
    then
        echo "${FILE} exists and is a regular file."
    else
        echo "${FILE} exists, but is neither a directory or a regular file."
    fi

    ls -l $FILE
done