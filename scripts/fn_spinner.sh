#!/bin/bash


spinner()
{

    if [ -z "$1" ]
    then
        max=20
    else
        max="$1"
    fi
    if [ -z "$2" ]
    then
        delay=0.10
    else
        delay="$2"
    fi


    local i=0
    local spinstr='/-\'
    while [ $i -lt ${max} ]; do
        local temp=${spinstr#?}
        printf "%c " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
        i=$((i+1))
    done
    printf "    \b\b\b\b"
}


