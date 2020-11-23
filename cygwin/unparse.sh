#!/bin/bash
# use reg 6+3 + MMDDYY
if [ -z $1 ]; then
    echo "No count provided"
    exit 2
fi 
if [ -z $2 ]; then
    echo "No password provided"
    exit 2
fi 


IFS=$'\n'
if [ $1 -lt 10 ]
then
    for i in `seq 1 $1`
        do
                cd 0$i
                for j in *.mp3.e
                    do
                        openssl enc -d -aes-256-cbc -in "$j" -out "$j.d" -pass pass:$2
                        rm "$j"
		    done
		    ls *.d | sed -e 'p;s/.e.d//' | xargs  -n2 -d '\n' mv    
                cd ..
        done

else
    for i in `seq 1 9`
        do
                cd 0$i
                for j in *.mp3.e
                    do
                        openssl enc -d -aes-256-cbc -in "$j" -out "$j.d" -pass pass:$2
                        rm "$j"
		    done
		    ls *.d | sed -e 'p;s/.e.d//' | xargs -d '\n' -n2 mv    
                cd ..
        done

    for i in `seq 10 $1`
        do
                cd $i
                for j in *.mp3.e
                    do
                        openssl enc -d -aes-256-cbc -in "$j" -out "$j.d" -pass pass:$2
                        rm "$j"
		    done
		    ls *.d | sed -e 'p;s/.e.d//' | xargs -d '\n' -n2 mv    
                cd ..
        done
fi