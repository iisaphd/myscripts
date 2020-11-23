#!/bin/bash
counter=0

for i in {1..9}
do
  mv 0$i 0$counter
  cd 0$counter
  rename "0$i - " "Chapter 0$counter - " *
  counter=$((counter+1))
  cd ..
done

mv 10 09
cd 09
rename "10 - " "Chapter 09 - " *
counter=$((counter+1))
cd ..


for i in `seq 11 $1`
do
  mv $i $counter
  cd $counter
  rename "$i - " "Chapter $counter - " *
  counter=$((counter+1))
  cd ..
done
