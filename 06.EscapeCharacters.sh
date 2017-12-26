#!/bin/bash

# How do we display: Hello     "World"?
echo "Hello \"World\""

echo *
echo *.txt
echo *txt

# Now the output would be *.txt, not from ls all directory
echo "*.txt"

# However, ", $, `, and \ are still interpreted by the shell,
# Even when they're in double quotes.

echo "A quote is \", backslash is \\, backtick is \`."
echo "A few spaces are     and dollar is \$. \$X is 5"

