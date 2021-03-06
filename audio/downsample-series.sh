#!/bin/bash
for h in *
do
  cd "$h"
  echo "in " `pwd`
  for i in *
	do 	
		cd "$i"
		echo "in " `pwd`
		for j in *.mp3
		do 	
			echo "*** Converting $j ***"
			ffmpeg -i "$j" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "re$j"
			mv "re$j" "$j"
		done 
		cd .. 
	done
  cd ..
done

