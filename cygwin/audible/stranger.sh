ffmpeg -y -ss 0:00:00 -t 1:05:52 -i TheStranger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheStranger-Chapter-1.mp3
ffmpeg -y -ss 1:05:52 -t 1:10:05 -i TheStranger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheStranger-Chapter-2.mp3
ffmpeg -y -ss 2:15:57 -t 1:11:39 -i TheStranger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheStranger-Chapter-3.mp3
mv TheStranger.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 3` ; do mkdir $i; mv TheStranger-Chapter-$i* $i/; done
for i in `seq 1 3` ; do cd $i; dotracks.sh 'Albert Camus' 'TheStranger'; cd ..; done
