#!/bin/bash
counter=1

for file in *.mp3
do
  id3v2 -t "${file%.mp3}" -T $counter -a "$1" -A "$2" "$file"
  counter=$((counter+1))
done


