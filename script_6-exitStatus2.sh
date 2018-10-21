#! /bin/bash

cat /etc/shadow

# $? returns the exit code of the last command
if [ $? -eq "0" ]
then
    echo "Command succeeded."
    exit 0
else
    echo "Command failed"
    exit 1
fi