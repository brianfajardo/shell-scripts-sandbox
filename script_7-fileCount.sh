#! /bin/bash

# This function returns the file count of the specified directory passed as an argument.

function file_count() {
    local DIR=$1
    local NUMBER_OF_FILES=$(ls $DIR | wc -l)

    if [ $# -lt 1 ]
    then
        echo "Directory path required."
        return 1
    elif [ ! -d $DIR ]
    then
        echo "Directory does not exist."
        return 2
    else
        echo "${DIR}:"
        echo "$NUMBER_OF_FILES"
        return 0
    fi
}

file_count
file_count /var
file_count /usr/bin