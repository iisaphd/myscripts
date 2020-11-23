#!/bin/bash
#this works only on windows

if [ -z $1 ]; then
    echo "No count provided"
    exit 2
fi 


rm *.odm
rm *.marker

artist=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
album="`echo $(pwd) | sed s:.*/$1:$1:`"
id3 -a "$artist" -l "$album" *.mp3

