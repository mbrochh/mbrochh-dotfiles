#/bin/bash

# Script to dive into code space.
# Starts a screen session and opens all windows that I need

# $1: Screen sessionname
# $2: Project directory
# $3: Name of virtualenv

# Kill old screen session with the same name.
screen -X -S $1 quit

# Start new screen session
screen -d -m -S $1

# Open all needed windows

# Start Django server
screen -S $1 -p 0 -X title runserver
screen -S $1 -p 0 -X stuff "`printf "cd $2\r"`"
screen -S $1 -p 0 -X stuff "`printf "workon $3\r"`"
screen -S $1 -p 0 -X stuff "`printf "./manage.py runserver\r"`"

# Start gorun.py to run tests on file changes
screen -x $1 -X screen
screen -x $1 -p 1 -X title gorun
screen -S $1 -p 1 -X stuff "`printf "cd $2\r"`"
screen -S $1 -p 1 -X stuff "`printf "workon $3\r"`"
screen -S $1 -p 1 -X stuff "`printf "gorun.py gorun_settings.py\r"`"

# Start vim for test files
screen -x $1 -X screen
screen -x $1 -p 2 -X title tests
screen -S $1 -p 2 -X stuff "`printf "cd $2\r"`"
screen -S $1 -p 2 -X stuff "`printf "workon $3\r"`"
screen -S $1 -p 2 -X stuff "`printf "v\r"`"

# Start vim for code files
screen -x $1 -X screen
screen -x $1 -p 3 -X title code
screen -S $1 -p 3 -X stuff "`printf "cd $2\r"`"
screen -S $1 -p 3 -X stuff "`printf "workon $3\r"`"
screen -S $1 -p 3 -X stuff "`printf "v\r"`"

# Go to project folder
screen -x $1 -X screen
screen -x $1 -p 4 -X title files
screen -S $1 -p 4 -X stuff "`printf "cd $2\r"`"
screen -S $1 -p 4 -X stuff "`printf "workon $3\r"`"

# DIVE IN!
screen -R $1
