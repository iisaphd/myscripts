# This is a script to split 
book="`basename ~+`".mp3
mp3splt -t 5.0 "$book"
status=$?
if [ $status -ne 0 ]; then
  echo "Error splitting"
  exit  2
fi

mv "$book" /cygdrive/d/music/4*/
status=$?
if [ $status -ne 0 ]; then
  echo "Error moving"
  exit  2
fi

