for i in *
do
cd "$i"
#1. re-encode
for j in *
do
  #get the title via mp3info and rename the file to the title
  title=`ffprobe "$j" 2>&1 | sed -E -n 's/^ *title *: (.*)/\1/p'` 
  title=${title//[$'\t\r\n']}
  echo $title is the title
  pause
  ffmpeg -i "$j"  -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 re"$j"
  mv re"$j" "$j"
  mv "$j" "$title".mp3
done

#2. split
for j in *
do
mp3splt -t 5.0 "$j"
rm "$j"
done

#3. update metadata
counter=1
for file in *.mp3
do
  id3 -T $counter "$file"
  counter=$((counter+1))
done



cd ..
done
