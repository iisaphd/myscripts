#!/bin/bash
for i in `seq 11 $1`
do
  mv $i $counter
  cd $counter
  rename "$i - " "Chapter $counter - " *
  counter=$((counter+1))
  cd ..
done

