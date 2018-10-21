#! /bin/bash -xev

# Bash options:
#   x: prints commands as they execute
#   e: exit on error
#   v: prints shell input lines as they are read

# Should return exit code 0.
ls /var/log

# Should return exit code 1. And exits script.
ls /does/not/exist

# Should not be called since above command returned an exit 
# code 1 and bash option -e is set in the shebang.
ls /etc