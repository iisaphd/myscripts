for i in `seq 1 9`
do
mp3wrap 0$i.mp3 0$i*mp3
ffmpeg -i *MP3WRAP*mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "`basename ~+` chapter-"0$i.mp3
rm *MP3WRAP*
rm 0$i*_*mp3
done

for i in `seq 10 $1`
do
mp3wrap $i.mp3 $i*mp3
ffmpeg -i *MP3WRAP*mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "`basename ~+` chapter-"$i.mp3
rm *MP3WRAP*
rm $i*_*mp3
done

