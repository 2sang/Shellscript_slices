#!/bin/bash

# Most languages have the concept of loops: If we want to repeat a task
# Twenty times, we don't have to type in the code twenty times.
# with maybe a slight change each time.

for i in 1 2 3 4 5
do
    echo "Looping ... number $i"
done

for i in hello 1 * 2 goodbye
do
    echo "Looping ... i is set to $i"
done

INPUT_STRING=hello

while [ "$INPUT_STRING" != "bye" ]
do
    echo "Please type something in (bye to quit)"
    read INPUT_STRING
    echo "You typed: $INPUT_STRING"
done

# while : <<< colon always evaluates to true. so you can use this as 
# while : 

# And look what it makes!
echo {1,2,3,4}/{6,7,8,9}


