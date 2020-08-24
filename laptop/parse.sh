#!/bin/bash
# use reg 6+3 + MMDDYY
if [ -z $1 ]; then
    echo "No count provided"
    exit 2
fi 

rm *.odm
rm *.marker

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
chmod 777 -R *