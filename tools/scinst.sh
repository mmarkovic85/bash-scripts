#!/bin/bash

# SCript INSTall - install script from lib

# FULL PATH COMMANDS
readonly fp_echo=$(command -v echo)
readonly fp_exit=$(command -v exit)
readonly fp_sudo=$(command -v sudo)
readonly fp_cp=$(command -v cp)
readonly fp_chown=$(command -v chown)

# HELPER FNS
echo_error_and_exit () {
    # $1 - string
    # $2 - integer
    
    $fp_echo $1 >&2
    $fp_exit $2
}

# MAIN

# get and check script path
script_name="$1"
script_path="$(cd $(dirname "$0"); cd ../lib; pwd)/$script_name"

if [ ! -x "$script_path" ]
then
    echo_error_and_exit "ERROR: Invalid script, can't be found in lib directory" 1
fi


# get target directory or set default /usr/local/bin
if [ -n "$2" ]
then
    if [ -d "$2" ]
    then
        target_directory="$2"
    else
        echo_error_and_exit "ERROR: Invalid target directory, $2 doesn't exists" 2
    fi
else
    if [ -d /usr/local/bin ]
    then
        target_directory="/usr/local/bin"
    else
        echo_error_and_exit "ERROR: Invalid target directory, /usr/local/bin doesn't exists" 2
    fi
fi

# get and check program path
program_name=${script_name:0:-3}
program_path="$target_directory/$program_name"

if [ -e program_path -o -n "$(command -v $program_name)" ]
then
    echo_error_and_exit "ERROR: File '$program_name' already exists" 3
fi


# install
$fp_sudo $fp_cp $script_path $program_path

# set owner to root
$fp_sudo $fp_chown root:root $program_path
