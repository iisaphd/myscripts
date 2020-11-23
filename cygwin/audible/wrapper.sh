#!/bin/bash
# arguments: $1 - desired title of mp3 
# $2 - pattern of original files
# script does this:
# moves originals into this directory
# removes subdirs
# mp3wraps the files 
# deletes the originals 
# renames the wrapped file correctly
if [ -z $1 ]; then
    echo "No target filename provided"
    exit 2
fi 
if [ -z $2 ]; then
    echo "No original pattern provided"
    exit 2
fi 

mvhere.sh
rm -rf [0-9]*
mp3wrap.exe $1.mp3 *.mp3
rm $2[0-9]*
unwrap.sh
