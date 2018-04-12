#!/bin/bash
author=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
book="`echo $(pwd) | sed s:.*/$1:$1:`"
echo id3v2 -a "$author" -A "$book" -t "$book" *.mp3

