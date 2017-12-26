#!/bin/bash

# Two things here are worth bearing in mind:

# First, a simple script will, more often than anticipated, grow into a
# large, complex one.

# Secondly, if nobody else can understand how it works, you will be lumbered with
# maintaining it yourself for the rest of your life!

# Also, Indentation is critical for understanding what a script does.

grep "something" /tmp/myfile
# Is usually much faster than
cat /tmp/myfile | grep "something"


