#!/bin/bash
counter=1
echo $2
for file in *.mp3
do
  id3 -t "${file%.mp3}" -T $counter -a "$1" -l "$2" "$file"
  counter=$((counter+1))
done


