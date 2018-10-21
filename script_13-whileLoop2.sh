#! /bin/bash

read -p "How many lines of /etc/passwd would you like to view? " NUMBER_OF_LINES

INDEX=1

while read LINE
do
    if [ $INDEX -le $NUMBER_OF_LINES ]
    then
        echo "${INDEX}: ${LINE}"
    fi
    
    ((INDEX++))
done < /etc/passwd