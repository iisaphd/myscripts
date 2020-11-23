ffmpeg -y -ss 0:00:00 -t 0:27:25 -i IrishLessons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IrishLessons-chapter-1.mp3
ffmpeg -y -ss 0:27:25 -t 0:30:09 -i IrishLessons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IrishLessons-chapter-2.mp3
ffmpeg -y -ss 0:57:34 -t 0:30:05 -i IrishLessons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IrishLessons-chapter-3.mp3
ffmpeg -y -ss 1:27:39 -t 0:30:09 -i IrishLessons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IrishLessons-chapter-4.mp3
ffmpeg -y -ss 1:57:48 -t 0:30:12 -i IrishLessons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IrishLessons-chapter-5.mp3
mv IrishLessons.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 5` ; do mkdir $i; mv IrishLessons-chapter-$i* $i/; done
for i in `seq 1 5` ; do cd $i; dotracks.sh 'Irish Lessons' 'IrishLessons'; cd ..; done
