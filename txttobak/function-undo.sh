#!/bin/bash
# function-undo.sh

. ./common.lib

echo $STD_MSG
rename .bak .txt
rename .html-bak .html
