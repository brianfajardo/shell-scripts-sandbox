#! /bin/bash

while true
do
    echo "1. Display disk usage"
    echo "2. Display system uptime"
    echo "3. Display users logged into the system"
    echo # Add empty line for readablity
    read -p "What would you like to do? (Enter q to quit): " OPTION
    echo

    case $OPTION in
        1)
            # Display free disk space
            df -h
            ;;
        2)
            uptime
            ;;
        3)
            who
            ;;
        q)
            echo "Bye-bye! 👋"
            break
            ;;
        *)
            echo "🚩 Uh-oh! You entered an invalid option."
            ;;
    esac

    echo
done