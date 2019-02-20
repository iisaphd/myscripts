#!/bin/bash
# usage: $1 = my name of the book in quotes Camel Case
#	 $2 = numeric prefix of book by rb digital
#	 $3 = Author
#	 $4 = my name of the book in quotes
#	 $5 = whether to downsample
#
#	This assumes that there are at least 1000 and less than 10000 minutes in the book
#	Follow this script up with do10sub

mp3wrap.exe "$1".mp3 "$2"*.mp3
rename _MP3WRAP "" *
rm "$2"*
idit.sh "$3" "$4" "$1".mp3
if [ "$5" == "y" ]
then
	down32.sh "$1".mp3 32"$1".mp3
	mv 32* "$1".mp3
fi
mp3splt.exe -t 5.0 "$1".mp3
rm "$1".mp3

exit

counter=1

for file in *.mp3
do
  id3 -t "${file%.mp3}" -T $counter -a "$3" -A "$4" "$file"
  if [ $counter -lt 20 ]
  then
    mv "$file" 00$counter" - $file"
  fi
  
  if [ $counter -lt 200 ]
  then
    mv "$file" 0$counter" - $file"
  else
    mv "$file" $counter" - $file"
  fi
  counter=$((counter+1))
done


