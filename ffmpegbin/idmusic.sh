#!/bin/bash
#this is for windows since id3 instead of id3v2

artist=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
#artist="Diana Gabaldon"
album="`echo $(pwd) | sed s:.*/$1:$1:`"
#album="Outlander"

counter=1

for file in *.mp3
do
  echo $counter doing this: id3v2 -t "${file%.mp3}" -T $counter "$file"
  id3 -t "${file%.mp3}" -T $counter -a "$artist" -A "$album" "$file"
  if [ $counter -lt 10 ]
  then
    mv "$file" 0$counter" - $file"
  else
    mv "$file" $counter" - $file"
  fi
  counter=$((counter+1))
done

#rename 's/([0-9][0-9]) - [0-9][0-9](.*)/$1$2/' *

