#!/bin/bash
# move mp3s to this directory
# remove subs
# dotracks

find . -iname "*.mp3" -exec mv {} ./ \;

find . -type d -iname "[A-Z0-9]*" -exec rm -rf {} \;

counter=1
title="`basename ~+`"
cd ..
author="`basename ~+`"
cd "$title"
echo $author is the author of $title
for file in *.mp3
 do
#  echo working on "$file"
  id3v2 -t "${file%.mp3}" -T $counter -a "$author" -A "$title" "$file"
  counter=$((counter+1))
done



