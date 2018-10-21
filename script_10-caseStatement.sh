#! /bin/bash

# Description:
#   This is a startup script for sleep walking server.

OPERATION_ARGUMENT=$1

case $OPERATION_ARGUMENT in
[start]|[sS][tT][aA][rR][tT])
    /tmp/sleep­-walking­-server &
    ;;
[stop]|[sS][tT][oO][pP])
    kill $(cat /tmp/sleep­walking­server.pid)
    ;;
*)
    echo "Invalid argument. Accepted arguments start|stop"
    exit 1
esac