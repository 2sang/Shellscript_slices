#!/bin/bash

echo "Please talk to me..."

while :
do
    read INPUT_STRING
    case $INPUT_STRING in
        hello)
            echo "Hello yourself!";;
        bye)
            echo "See you again!";;
        *)
            echo "Sorry, I don't understand.";;
    esac
done
echo "That's all forks!"
