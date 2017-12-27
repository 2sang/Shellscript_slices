#!/bin/bash

foo="bar"
if [ $foo = "bar" ]; then
    echo "foo is bar"
else
    echo "foo is not bar"
fi


if [ $foo = "bar" ]; then
    echo "foo is bar2"
elif [ $foo = "zoo" ]; then
    echo "foo is zoo"
else
    echo "None of the above"
fi


# Testing $X
if [ "$X" -lt "0" ]; then
    echo "X is less than zero"
fi

if [ "$X" -gt "0" ]; then
    echo "X is greater than zero"
fi

[ "$X" -le "0" ] && \
    echo "X is less than or equal to zero"
[ "$X" -ge "0" ] && \
    echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
    echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
    echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
    echo "X is not the string \"hello\""
[ -n "$X" ] && \
    echo "X is of nonzero length"
[ -f "$X" ] && \
    echo "X is the paht of a real file" || \
    echo "No such file: $X"
[ -x "$X" ] && \
    echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
    echo "X is a file which is newer than /etc/passwd"


while :
do
echo -en "Please guess the magic number: "
read X
# >/dev/null 2>&1 directs any output or errors to the special 'null' device,
# instead of going to the user's screen.
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
    echo "Sorry, wanted a number"
else
    if [ "$X" -eq "7" ]; then
        echo "You entered the magic number!"
    else
        echo "try again. not that number."
    fi
fi
done

X=0
while [ -n "$X" ]
do
    echo "Enter some text (RETURN to quit)"
    read X
    echo "You said: $X"
done


