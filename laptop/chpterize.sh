#!/bin/bash
# usage
# $1 - 0 or 1
# $2 total parts
# $3 author
if [ -z $1 ]; then
    echo "No inital part count provided"
    exit 2
fi
if [ -z $2 ]; then
    echo "No total part cound provided"
    exit 2
fi
if [ -z $3 ]; then
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

# assumes that there are less than 100 chapters (for < 10 chapters, Total recorder still adds a 0 in the file name)
if [ $2 -lt 10 ]; then
  for i in `seq $1 $2`;  do mkdir $i; mv 0$i*mp3 $i; done
else
  for i in `seq $1 9`;  do mkdir 0$i; mv 0$i*mp3 0$i; done
  for i in `seq 10 $2`; do mkdir  $i; mv  $i*mp3  $i; done
fi



title="`basename ~+`"

for i in [0-9]*
do
cd $i
dotracks.sh "$3" "$title"
cd ..
done



