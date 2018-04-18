#!/bin/bash

artist=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
album="`echo $(pwd) | sed s:.*/$1:$1:`"
echo id3v2 -a "$artist" -A "$album" -t "$album" *.mp3

counter=1

for file in *
do
  echo $counter doing this: id3v2 -t "${file%.mp3}" -T $counter "$file"
  id3v2 -t "${file%.mp3}" -T $counter "$file"
  if [ $counter -lt 10 ]
  then
    mv "$file" 0$counter" - $file"
  else
    mv "$file" $counter" - $file"
  fi
  counter=$((counter+1))
done

rename 's/([0-9][0-9]) - [0-9][0-9](.*)/$1$2/' *

