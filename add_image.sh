#!/usr/bin/env bash

cd  ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/test/GSearch/Library
ls | while read file; do
  image=$(cat "$file" | sed -ne 's/background.* \(.*$\)/\1/p')
  echo "$file"
  echo "" >> "$file"
  echo "![]($image)" >> "$file"
done

