#!/bin/bash
# $1 - RB Digital Prefix
# $2 - Preferred Prefix
# $3 - number of chapters mod 10
# $4 - Author
# $5 - Overwrite ID3

rename "$1" "$2 " *
rename "C00" "chapter " *
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 $3`; do mkdir $i; done
for i in `seq 0 $3`; do mv *chapter\ $i* $i/; done
mv *mp3 0/

if [ "$5" == "y" ]
then
  for i in `seq 0 $3`
  do 
    cd $i
    dotracks.sh "$4" "$2"
    cd ..
  done
else
  for i in `seq 0 $3`
  do 
    cd $i
    counter=1
    for file in *.mp3
    do
      id3  -T $counter "$file"
      counter=$((counter+1))
    done
    cd ..
  done
fi

