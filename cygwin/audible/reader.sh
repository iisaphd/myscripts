#!/bin/bash
filename=$1
while read line
do
   if [[ $line == "Finished" ]]; then
	read book
   	echo "$book"   
   fi
   
   if [[ ${line/[0-9]*h [0-9]*m /} == "left" ]]; then
   	read book
   	echo "$book"
   fi

done <"$filename"
