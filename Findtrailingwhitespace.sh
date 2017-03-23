#!/bin/bash

# Make sure that the script understands space characters.
IFS=$'\n'

# Use grep to locate all files with a space at the end of its name with the Regular Expression
# [[:space:]]\+$
find . -mindepth 1 | while read ffile || test -n "$ffile"; do
	echo $ffile | grep "[[:space:]]\+$"
done

exit 0