#! /bin/bash

# echo "This script will exit with a 0 exit status."
# exit 0

FILE=$1

if [ -f $FILE ]
then
    echo "$FILE is a regular file."
    exit 0
elif [ -d $FILE ]
then
    echo "$FILE is a directory."
    exit 1
else
    echo "$FILE is neither a file or directory."
    exit 2
fi
