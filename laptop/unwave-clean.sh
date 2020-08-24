rm *.aa
rm BK*
for i in *.wav; do ffmpeg -i "$i" -codec:a libmp3lame -qscale:a 6 "${i%.wav}.mp3"; rm $i; done
id3 -a "$1" -l "$2" *.mp3
for i in *.mp3; do mp3splt -t 5.0 $i; rm $i; done
mkdir -p "$1"/"$2"
mv *.mp3 "$1"/"$2"
cd "$1"
cd "$2"
for i in {100..1}
do
  if test -n "$(shopt -s nullglob; echo *Part$i*)"
    then mkdir "CD $i"
    mv *Part$i* "CD $i"
  fi
done
cd ../..




