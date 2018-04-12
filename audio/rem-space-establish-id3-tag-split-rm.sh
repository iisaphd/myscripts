#!/bin/bash
rename 's/ //g' *
author=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
book="`echo $(pwd) | sed s:.*/$1:$1:`"
echo id3v2 -a "$author" -A "$book" -t "$book" *.mp3
id3v2 -a "$author" -A "$book" -t "$book" *.mp3
file=`ls`
mp3splt -t 5.0 *.mp3
rm "$file"
