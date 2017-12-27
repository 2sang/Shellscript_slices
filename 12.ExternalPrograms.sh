#!/bin/bash

echo "This might take long time"
find /Users/sangsulee -name "*.html" -print | grep "/index.html$"
find /Users/sangsulee -name "*.html" -print | grep "/contents.html$"
echo "done!"

echo "About two times more than this"
HTML_FILES=`find /Users/sangsulee -name "*.html" -print`
echo "$HTML_FILES" | grep "/index.html$"
echo "$HTML_FILES" | grep "/contents.html$"

echo "done!"

