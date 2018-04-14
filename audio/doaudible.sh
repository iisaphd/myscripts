#!/bin/bash

#
# assumptions:
# You are in the directory of the file that needs to be converted
# There is only 1 file in this directory
# You have backed up this file before running this script
# You have the bc command installed

# Step 1: Establish file name
file=`ls`	# this script only works if there is one file in the directory
echo file is $file

# Step 2: Downsample
echo Downsampling...
#echo ffmpeg -i "$file" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "re$file"; mv "re$file" "$file"
ffmpeg -i "$file" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "re$file"; mv "re$file" "$file"

# Step 3: Establish id3tags based on what directory we are in
author=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:` # Pass the name of the parent directory into sed and remove everything before the last /
book="`echo $(pwd) | sed s:.*/$1:$1:`"                # Name of book is in pwd. Once again, remove everything before the last /
echo id3v2 -a "$author" -A "$book" -t "$book" *.mp3
id3v2 -a "$author" -A "$book" -t "$book" *.mp3

# Step 4: Split the file into 5 minute parts
mp3splt -t 5.0 *.mp3

# Step 5: Remove the original file
rm "$file"

# Step 6: Reset the Title Tag for every file
echo Retagging title tag...
for j in *.mp3
do 
    id3v2 -t "${j%.mp3}" "$j"
done

# need to call dosub or do10sub to put these files into the correct dir structure
# first, figure out how many directories are needed
files=`ls -lah | wc | awk '{print $1}'` #this number is +3 higher than the actual
num=$(echo $files - 3 | bc)
# Since we want 10 files per directory, then figure out num/10
directories=$(echo $num / 20 | bc)
modresult=$(echo $num % 20 | bc)
# If mod result = 0, then the number of directories is correct, otherwise add 1 to directories
if [ "$modresult" -eq 0 ]
then
    directories=$(echo $directories - 1 | bc)
fi
echo I have established that the number of directories is $directories

# second, call dosub or do10sub
if [ "$directories" -lt 10 ]
then
    # need to strip .mp3 out the value of $file and add an underscore
    bookname="${file%.mp3}_"
    echo pattern to match is $bookname
    for i in `seq 0 $directories`
    do 
        mkdir $i
        mv $bookname$i* $i
    done
else
    # need to strip .mp3 out the value of $file
    bookname="${file%.mp3}"
    echo pattern to match is $bookname
    for i in `seq 0 9`
    do 
        mkdir 0$i
        #echo moving "$bookname"_0$i* to 0$i
        mv "$bookname"_0$i* 0$i
    done
    for i in `seq 10 $directories`
    do 
        mkdir $i
        mv "$bookname"_$i* $i
    done
fi

# done



