for j in *mp3
do
ffmpeg -i "$j" -i cover.jpg -map 0:0 -map 1:0 -codec copy -id3v2_version 3 -metadata:s:v title="Album cover" -metadata:s:v comment="Cover (front)" out.mp3
mv out.mp3 "$j"
done