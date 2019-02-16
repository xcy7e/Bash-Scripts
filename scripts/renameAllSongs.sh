#!/bin/bash

dir=$(pwd)

clear
echo -e "\e[1m\e[33mRenaming songs based on meta-info\e[0m"

for f in * ; do
   title=$(ffprobe "$f" 2>&1 | sed -E -n 's/^ *title *: (.*)/\1/p')
   artist=$(ffprobe "$f" 2>&1 | sed -E -n 's/^ *artist *: (.*)/\1/p')
   #echo "$artist - $title.mp3"
   if [ ! -z "$title" ] && [ ! -z "$artist" ]; then
      mv "$f" "$artist - $title.mp3"
   fi
done

echo -e "\e[1m\e[32mDone!\e[0m\e[96m"
ls
echo -e \e[0m"
