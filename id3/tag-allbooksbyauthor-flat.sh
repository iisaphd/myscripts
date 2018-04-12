#!/bin/bash
for k in *
do
    cd "$k"
    echo $k
    for j in *.mp3
    do 
        id3v2 -t "${j%.mp3}" "$j"
    done
    cd .. 
done
