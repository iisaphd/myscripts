#!/bin/bash
# usage
# $1 - Author
#assumes these books are from overdrive

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

for i in [0-9]*
do
  cd "$i"
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error cding"
    exit  1
  fi

  mp3wrap.exe "`basename ~+`".mp3 *mp3
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error wrapping"
    exit  2
  fi
  mv *MP3WRAP* ../
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error moving wrap"
    exit  3
  fi
  cd ..
  rm -rf "$i"
done
  
mp3wrap.exe "`basename ~+`".mp3 *mp3
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error wrapping"
    exit  4
  fi
mv "`basename ~+`_MP3WRAP.mp3" "`basename ~+`"-64k.mp3
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error renaming"
    exit  5
  fi
rm *MP3WRAP*

id3.exe -a "$author" -t "`basename ~+`" -l "`basename ~+`" *.mp3
ffmpeg -i *.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "`basename ~+`".mp3
rm *64k*
