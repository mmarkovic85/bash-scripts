#!/bin/bash

# FULL PATH COMMANDS
readonly fp_echo=$(command -v echo)
readonly fp_cat=$(command -v cat)
readonly fp_sudo=$(command -v sudo)
readonly fp_apt=$(command -v apt)
readonly fp_pacman=$(command -v pacman)

# Functions
log () {
$fp_cat << EOF

== $1

EOF
}

# MAIN

# sudo + apt
if [ -n "$fp_sudo" -a -n "$fp_apt" ]
then
    $fp_sudo $fp_echo "== SYSTEM UPDATE [sudo + apt] =="

    log "apt update"
    $fp_sudo $fp_apt update

    log "apt upgrade"
    $fp_sudo $fp_apt upgrade -y

    log "apt dist-upgrade"
    $fp_sudo $fp_apt dist-upgrade -y
fi

# sudo + pacman
if [ -n "$fp_sudo" -a -n "$fp_pacman" ]
then
    $fp_sudo $fp_echo "== SYSTEM UPDATE [sudo + pacman] =="

    log "pacman -Syu"
    $fp_sudo $fp_pacman -Syu
fi
