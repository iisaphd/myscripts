#!/bin/bash
for i in [0-9]*
do 
    cd "$i"
    for j in *.mp3
    do 
        id3 -t "${j%.mp3}" "$j"
    done
    cd .. 
done
