ffmpeg -y -ss 10:16:56 -t 1:04:20 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-10.mp3
ffmpeg -y -ss 11:21:16 -t 1:06:34 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-11.mp3
ffmpeg -y -ss 12:27:51 -t 1:00:58 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-12.mp3
ffmpeg -y -ss 13:28:49 -t 1:13:38 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-13.mp3
ffmpeg -y -ss 14:42:27 -t 1:07:51 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-14.mp3
mv Shining.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Shining-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Stephen King' 'Shining'; cd ..; done
for i in `seq 10 14` ; do mkdir $i; mv Shining-chapter-$i* $i/; done
for i in `seq 10 14` ; do cd $i; dotracks.sh 'Stephen King' 'Shining'; cd ..; done
