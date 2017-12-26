#!/bin/bash

# Note that there must be no spaces around the "=" sign: 
# VAR=value works; VAR = value doesn't work. In the first case, 
# the shell sees the "=" symbol and treats the command as a variable assignment.
# In the second case, the shell assumes that VAR must be the name of a command 
# and tries to execute it.

# IN SHORT,
# VAR = value : excute program named VAR, arguments as =, value
# VAR=value : assign value to VAR variable, which we intended

x="hello"
expr $x + 1

MY_MESSAGE="Hello World"
MY_SHORT_MESSAGE=hi
MY_NUMBER=2
MY_PI=3.14
MY_OTHER_PI="3.141592"
MY_MIXED=123abc

echo "What is your name?"
MY_NAME="2sang"
echo "HELLO $MY_NAME - hope you're well."

MY_OBFUSCATED_VARIABLE=Hello
# Mis-spelled, but we will get nothing instead of error
echo "MY obfuscated_variable: $MY_OSFUCATED_VARIABLE"

# If you set variable MYVAR=hello in shell prompt and want to
# keep that value on your script scope, you need to export that value.

# In this example, it's obvious that you get the result empty, hello world.
# But if you 'export' the variable MYVAR outside of this script, 
# You can access that variable from inside of the script.
echo "MYVAR is : $MYVAL"
MYVAL="Hello world"
echo "MYVAR is : $MYVAL"

# Let's say you have your env variable MYVAL, and exported it.
# Guess what happens if we run the code and later see the variable again?
# The value would not changed at all. If you want to let the script does that,
# and you need to 'source' the variable fram script. See the dot(.) command.
# This is how your .profile or .bash_profile works.

echo "What is your name?"
read USER_NAME
echo "HELLO $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file."
touch "${USER_NAME}_file"
