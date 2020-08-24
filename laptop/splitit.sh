# This is a script to split
book="`basename ~+`".mp3
for i in *mp3
do
  mp3splt -t 5.0 "$i"
  rm "$i"
done
status=$?
if [ $status -ne 0 ]; then
  echo "Error splitting"
  exit  2
fi
