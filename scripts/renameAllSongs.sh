#!/bin/bash

# Rename song-files in current directory by meta info and save as *.mp3
# e. g. "ACDC - Hihgway to hell.mp3"

clear
echo -e "\e[1m\e[33mRename songs..\e[0m"

for f in * ; do
   title=$(ffprobe "$f" 2>&1 | sed -E -n 's/^ *title *: (.*)/\1/p')
   artist=$(ffprobe "$f" 2>&1 | sed -E -n 's/^ *artist *: (.*)/\1/p')
   if [ ! -z "$title" ] && [ ! -z "$artist" ]; then
      mv "$f" "$artist - $title.mp3"
   fi
done

echo -e "\e[1m\e[32mDone!\e[0m\e[96m"
ls
echo -e \e[0m"
