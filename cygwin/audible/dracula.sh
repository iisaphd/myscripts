ffmpeg -y -ss 0:00:00 -t 0:59:23 -i Dracula.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dracula-chapter-1.mp3
ffmpeg -y -ss 0:59:23 -t 1:01:56 -i Dracula.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dracula-chapter-2.mp3
ffmpeg -y -ss 2:01:19 -t 0:56:05 -i Dracula.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dracula-chapter-3.mp3

mv Dracula.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 3` ; do mkdir $i; mv Dracula-chapter-$i* $i/; done
for i in `seq 1 3` ; do cd $i; dotracks.sh 'Bram Stoker' 'Dracula'; cd ..; done
