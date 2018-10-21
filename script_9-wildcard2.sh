#! /bin/bash

# This script allows a user to enter a file extension and 
# rename all files matching the extension in the current working directory. 

DATE=$(date +%F) # YYYY-MM-DD

read -p "Enter a file extension: " EXTENSION
read -p "Enter a prefix to prepend to the file names (Press ENTER for ${DATE}): " PREFIX

# -z returns truthy if the length of the string is zero.
# If prefix is not provided, default to the date.
if [ -z $PREFIX ]
then
    PREFIX=$DATE
fi

for FILE in $(ls *.${EXTENSION})
do
    NEW_FILE=${PREFIX}-${FILE}
    echo "Renaming ${FILE} to ${NEW_FILE}"
    mv $FILE $NEW_FILE
done