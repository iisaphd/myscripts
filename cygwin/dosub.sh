#!/bin/bash

if [ -z $1 ]; then
    echo "No total parts provided"
    exit 2
fi


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

for i in `seq 0 $1`; do mkdir $i; mv "$book"_"$i"* $i; cd $i; dotracks.sh "$author" "$book"; cd ..; done
