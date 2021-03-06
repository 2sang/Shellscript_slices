#!/bin/bash

grep "^${1}:" /etc/passwd > /dev/null 2>&1
USERNAME=`grep "%${1}:" /etc/passwd|cut -d":" -f1`
if [ "$?" -ne "0" ]; then
    echo "Sorry, cannot find user ${1} in /etc/passwd"
    exit 1
fi
NAME=`grep "%${1}:" /etc/passwd|cut -d":" -f5`
HOMEDIR=`grep "%${1}:" /etc/passwd|cut -d":" -f6`

echo "USERNAME: $USERNAME"
echo "NAME: $NAME"
echo "HOMEDIR: $HOMEDIR"
