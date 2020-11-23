#!/bin/bash
#this works only on windows
#this script renames the album to be part x
#this script renames the title to album-hh:mm_hh:mm

if [ -z $1 ]; then
    echo "No count provided"
    exit 2
fi 


rm *.odm
rm *.marker

#artist=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:`
#album="`echo $(pwd) | sed s:.*/$1:$1:`"
#id3 -a "$artist" -l "$album" *.mp3


if [ $1 -lt 10 ]
then
    for i in `seq 1 $1`
        do
                mkdir 0$i
                chmod 777 -R *
                mv *0$i.mp3 0$i
                cp *.jpg 0$i
                cd 0$i
                id3.exe -l Part\ $i *.mp3
                mp3splt -t 5.0 *.mp3
                rm *0$i.mp3
                cd ..
        done

else
    for i in `seq 1 9`
        do
                mkdir 0$i
                chmod 777 -R *
                mv *0$i.mp3 0$i
                cp *.jpg 0$i
                cd 0$i
                id3.exe -l Part\ 0$i *.mp3
                mp3splt -t 5.0 *.mp3
                rm *0$i.mp3
                cd ..
        done

    for i in `seq 10 $1`
        do
                mkdir $i
                chmod 777 -R *
                mv *$i.mp3 $i
                cp *.jpg $i
                cd $i
                id3.exe -l Part\ $i *.mp3
                mp3splt -t 5.0 *.mp3
                rm *$i.mp3
                cd ..
        done
fi

  for i in [0-9]*
	do 	
		cd $i
		echo "in " `pwd`
		for j in *.mp3
		do 	
			echo "*** Converting $j ***"
			ffmpeg -i "$j" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "re$j"
			mv "re$j" "$j"
			id3 -t "${j%.mp3}" "$j"
		done 
		cd .. 
	done

