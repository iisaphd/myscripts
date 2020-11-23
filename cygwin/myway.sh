#!/bin/bash
# usage
# $1 - Author
#assumes these books are from overdrive

if [[ -z $1 ]]; then
    echo "No Author provided"
    exit 2
fi

find . -name "*.mp3" -exec mv {} ./ \;
mp3wrap.exe "`basename ~+`".mp3 *mp3
find . -name "*[h,s].mp3" -delete

#This assumes overdrive
rm -rf [0-9]
rm -rf [0-9][0-9]


id3.exe -a "$1" -t "`basename ~+`" -l "`basename ~+`" *.mp3
ffmpeg -i *.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "`basename ~+`".mp3
rm *_MP3WRAP*
