#! /bin/bash

# This script renames all .jpg files in the working directory and prepends the date.

# Format: YYYY-MM-DD
DATE=$(date +%F)

for FILE in $(ls *.jpg)
do
    mv $FILE "${FILE}-${DATE}"
done