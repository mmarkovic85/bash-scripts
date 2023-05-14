#!/bin/bash

# SCriptS INITialize

# FULL PATH COMMANDS
readonly fp_echo=$(command -v echo)
readonly fp_exit=$(command -v exit)
readonly fp_sudo=$(command -v sudo)
readonly fp_chmod=$(command -v chmod)

# MAIN

# resolve directory variable
if [ ! -d "$1" ]
then
	$fp_echo "ERROR: Script first argument must be valid directory" >&2
	$fp_exit 1
fi

# make all files in directory executable
for file in $1/*
do
	if [ ! -x "$file" ]
	then
		$fp_sudo $fp_chmod +x "$file"
	fi
done
