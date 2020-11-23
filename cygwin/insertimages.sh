#!/bin/bash
#This script was rewritten. Originally $1 was a list of subdirectories:
#for i in $1
#do
#cd "$i"
rename "_00s" "" *
rename "_00s" "" *


#New script has name of the jpg in $1
for j in *mp3
do
ffmpeg -i "$j" -i "$1" -map 0:0 -map 1:0 -codec copy -id3v2_version 3 -metadata:s:v title="Album cover" -metadata:s:v comment="Cover (front)" out.mp3
mv out.mp3 "$j"
done

#Original commented out
#cd ..
#done
