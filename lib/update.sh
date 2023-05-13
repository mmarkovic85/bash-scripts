#!/bin/bash

# get full path to commands
readonly fp_sudo=$(command -v sudo)
readonly fp_apt=$(command -v apt)
readonly fp_pacman=$(command -v pacman)

# sudo + apt
if [ -n "$fp_sudo" -a -n "$fp_apt" ]
then
    $fp_sudo $fp_apt update
    
    $fp_sudo $fp_apt upgrade
    
    $fp_sudo $fp_apt dist-upgrade
fi

# sudo + pacman
if [ -n "$fp_sudo" -a -n "$fp_pacman" ]
then
    $fp_sudo $fp_pacman -Syu
fi
