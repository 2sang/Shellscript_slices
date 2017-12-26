#!/bin/bash
# This is a comment!

# Below two lines make no differences in output
echo Hello World
echo HELLO     World

echo "Hello      World"
echo "Hello*World"

# * lists all output of 'ls' command.
echo Hello * World

echo "hello"World
echo HELLO "    " World
echo "Hello"*"World"

# Any words in backquote is regard as command 
echo `hello` World


