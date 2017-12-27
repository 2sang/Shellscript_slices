#!/bin/bash

echo "I was called with $# parameters."
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"

while [ "$#" -gt "0" ]
do
    echo "\$1 is $1"
    shift
done

/usr/local/bin/error_command
if [ "$?" -ne "0" ]; then
    echo "Sorry, we had a problem there!"
fi

# $$ is process ID(PID) of currently running shell, and $!
# variable is the PID of the last run background process.

# IFS is the Internal Field Separator. The default value is SPACE TAB NEWLINE,
# but if you are changing it, it's easier to take a copy, as shown:
old_IFS="$IFS"
IFS=:
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
echo "x is $x y is $y z is $z"

