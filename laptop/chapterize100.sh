#!/bin/bash
# usage
# $1 total parts
if [ -z $1 ]; then
    echo "No total parts provided"
    exit 2
fi
if [ -z $2 ]; then
    echo "No Author provided"
    exit 2
fi

#if basename.mp3 is here, rm it
file="`basename ~+`".mp3
echo $file is the filename
if [ -f "$file" ]; then
  rm "$file"
fi

#split the chapters into max 5min files
for i in *mp3
do
mp3splt.exe -t 5.0 "$i"
rm "$i"
done

#assumes there are MORE than 100 chapters
for i in `seq 0 9`;  do mkdir 0$i; mv 0$i*mp3 0$i; done


for i in `seq 10 $1`;  do mkdir $i; mv $i*mp3 $i; done

title="`basename ~+`"

for i in [0-9]*
do
cp *.jpg $i/
cd $i
dotracks.sh "$2" "$title"
cd ..
done


