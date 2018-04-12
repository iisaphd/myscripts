#!/bin/bash

# Run this script from the directory that has the files you want to count

if [ -f ~/dircounts.txt ]; then
    rm ~/dircounts.txt
fi

find "`pwd`" -type d -print0 | while read -d $'\0' directory
do
   cd "$directory"
   files=`ls -lah | wc | awk '{print $1}'`
   echo -e $directory '\t' $files >> ~/dircounts.txt
done
sort ~/dircounts.txt > ~/sortcounts.txt
rm ~/dircounts.txt
