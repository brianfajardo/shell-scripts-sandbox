#! /bin/bash

FILE="/etc/shadow"

# -e checks if file exists
if [ -e $FILE ]
then
    echo "Shadow passwords are enabled."
fi

# -w checks if file exists and write permissions is granted
if [ -w $FILE ]
then
    echo "You have permissions to edit ${FILE}"
else
    echo "You do NOT have permissions to edit ${FILE}"
fi