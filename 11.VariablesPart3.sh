#!/bin/bash

foo=sun
echo $fooshine
echo ${foo}shine

echo -en "What is your name [`whoami`]"
read myname
if [ -z $myname ]; then
    myname=`whoami`
fi
echo "Your name is : $myname"

echo -en "What is your name again? [`whoami`]"
read myname
echo "Your name is : ${myname:-`whoami`}"
