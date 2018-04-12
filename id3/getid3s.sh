#!/bin/bash

# Run this script from the directory that has the files you want to look up the tags for

if [ -f ~/id3tags.txt ]; then
    rm ~/id3tags.txt
fi

counter=0
echo "Searching for files..."
find . -iname "*.mp3" -print0 | sort -z | while read -d $'\0' file
do
  if ((counter == 0))
  then
    echo "Beginning to get tags..."
  fi
  #album=`id3v2 -l "$file" | grep TALB`
  #title=`id3v2 -l "$file" | grep TIT2`
  tags=`id3v2 -l "$file" | head -3`
  echo -e $file '\t' $tags >> ~/id3tags.txt
  counter=$((counter+1))
  if  ((counter % 500 == 0)) 
  then
    echo "$counter...Just got tags for $file"
  fi
done

# another interesting thing to do would be to find all the directories and then count how many files are in them
# find . -type d -print0 | while read -d $'\0' directory
# do
#    files=`ls -lah | wc | awk '{print $1}'`
#    echo -e $directory '\t' $files
# done
