#!/bin/bash
# usage
# $1 - Author
#assumes these books are from overdrive

# Commented the below out since there should not be any subs and because it fails when a book name starts with a number`
# remove subs
#find . -type d -name [0-9]* -delete
#  status=$?
#  if [ $status -ne 0 ]; then
#    echo "Error deleting subs"
#    exit  2
#  fi

# wrap parts
  mp3wrap.exe "`basename ~+`".mp3 *mp3
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error wrapping"
    exit  2
  fi
# remove parts
  rm *Part[0-9]*
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error removing overdrive"
    exit  2
  fi
  
# reencode
ffmpeg -i *.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "`basename ~+`".mp3

# remove wrap
rm *_MP3WRAP*
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error removing wrap"
    exit  2
  fi

echo "Next steps: open cue file, paste into excel and paste the excel commands into a script"
