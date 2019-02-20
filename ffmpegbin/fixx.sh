for i in *mp4
do
ffmpeg -i "$i" -qscale 0 re"$i"
mv re"$i" "$i"
done
