#!/usr/bin/env bash

file=$(realpath temp_list.txt)
cd /Users/peter/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/test/GSearch &> /dev/stdout

cat $file | sort | uniq | while read item; do
  echo "";
  echo $item
  playtime=$(echo ${item%% *})
  title=$(echo $item | sed -e 's/^[0-9]* //').md
  echo "playtime: $playtime"
  echo "title: ${title}"
  touch "$title"
done
