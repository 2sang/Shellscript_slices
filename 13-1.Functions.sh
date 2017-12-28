#!/bin/bash

# It is important that when writing a scripts, you need to write a "library" of 
# useful functions. and source that file at the start of the other scripts
# which use the functions.

# So this usually goes at the start of the script.
#. ./library.sh

print_param() {
    # Also, we cannot change the parameter directly, rather we need to 
    # assign that to a new variable.
    for param in $@; 
    do
        echo $param
    done
}

print_param $@

# Scope of Variables
myfunc() {
    echo "I was called as : $@"
    x=2
}

## Main script start here
echo "Script was called with $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"
## See? no scope even inside of function!

# Let's look intersting one.
myfunc 1 2 3 | tee out.log
# How was the result?




