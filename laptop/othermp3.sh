#!/bin/bash
book="`basename ~+`"
  for j in *mp3
  do 
    mp3splt -t 5.0 "$j"
    rm "$j"
  done
counter=1
for file in *.mp3
do
  id3  -t "${file%.mp3}" -T $counter -l "$book" "$file"
  counter=$((counter+1))
done


