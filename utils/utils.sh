#!/bin/bash

# Utils for use in bash scripts

# FULL PATH COMMANDS
readonly fp_echo=$(command -v echo)
readonly fp_exit=$(command -v exit)

# HELPER FNS
echo_error_and_exit () {
    # $1 - string
    # $2 - integer
    
    $fp_echo $1 >&2
    $fp_exit $2
}
