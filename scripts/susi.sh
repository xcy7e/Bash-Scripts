#!/bin/bash
# SUbdirectorySIze

du -hs * | sort -h

echo -e "\e[90m-------------------------------------------\e[0m"

total=$(du -sch | sed -n 2p)
echo -e "\e[48;5;208m\e[30m\e[1m$total\e[0m"
