#!/bin/bash
# usage
# $1 total parts
#if [ -z $1 ]; then
#    echo "No total parts provided"
#    exit 2
#fi

#get the author's name
path=`pwd`
cd ..
author="`basename ~+`"
cd "$path"
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error getting into the right directory"
    exit  2
  fi

book="`basename ~+`"
echo $author is the author of $book



#if basename.mp3 is here, rm it
file="`basename ~+`".mp3
echo $file is the filename
if [ -f "$file" ]; then
  mv  "$file" /cygdrive/d/music/4\ -\ done/
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error moving the file"
    exit  2
  fi
fi

#split the chapters into max 5min files
for i in *mp3
do
mp3splt.exe -t 5.0 "$i"
if [ $? -eq 0 ]
then
	echo "All ok"
else
	echo "Error splitting file"
	exit 1
fi
rm "$i"
done


#assumes there are less than 100 chapters
#for i in `seq 0 $1`;  do mkdir $i; mv *chapter-$i*mp3 $i; done
title="`basename ~+`"
#for i in [0-9]
#do
#cp *.jpg $i/
#cd $i
#  status=$?
#  if [ $status -ne 0 ]; then
#    echo "Error cd to sub"
#    exit  2
#  fi
dotracks.sh "$author" "$title"
#cd ..
#  status=$?
#  if [ $status -ne 0 ]; then
#    echo "Error cd to book directory"
#    exit  2
#  fi

#done



