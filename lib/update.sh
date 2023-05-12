#!/bin/bash

# get full path to commands
_sudo=$(command -v sudo)
_apt=$(command -v apt)
_pacman=$(command -v pacman)

# sudo + apt
if [ -n "$_sudo" -a -n "$_apt" ]
then
    $_sudo $_apt update
    
    $_sudo $_apt upgrade
    
    $_sudo $_apt dist-upgrade
fi

# sudo + pacman
if [ -n "$_sudo" -a -n "$_pacman" ]
then
    $_sudo $_pacman -Syu
fi
