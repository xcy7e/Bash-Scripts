#!/bin/bash

#check if given host is reachable by ping

iface="enp4s0f1"

[[ ! -z $2 ]] && iface="$2"

ping -c1 -W1 -q -I $iface $1 &>/dev/null
status=$( echo $? )
if [[ $status == 0 ]] ; then
     #Connection success!
     echo 1
else
     #Connection failure
     echo 0
fi
