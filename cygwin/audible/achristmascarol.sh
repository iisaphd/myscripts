ffmpeg -y -ss 0:00:00 -t 0:50:58 -i AChristmasCarol.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AChristmasCarol-chapter-1.mp3
ffmpeg -y -ss 0:50:58 -t 0:44:08 -i AChristmasCarol.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AChristmasCarol-chapter-2.mp3
ffmpeg -y -ss 1:35:06 -t 0:05:56 -i AChristmasCarol.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AChristmasCarol-chapter-3.mp3
ffmpeg -y -ss 1:41:02 -t 0:39:35 -i AChristmasCarol.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AChristmasCarol-chapter-4.mp3
ffmpeg -y -ss 2:20:37 -t 0:17:05 -i AChristmasCarol.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AChristmasCarol-chapter-5.mp3
mv AChristmasCarol.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 5` ; do mkdir $i; mv AChristmasCarol-chapter-$i* $i/; done
for i in `seq 1 5` ; do cd $i; dotracks.sh 'Charles Dickens' 'AChristmasCarol'; cd ..; done
