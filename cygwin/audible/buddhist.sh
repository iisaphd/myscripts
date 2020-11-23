ffmpeg -y -ss 0:00:00 -t 1:06:34 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-1.mp3
ffmpeg -y -ss 1:06:34 -t 1:09:39 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-2.mp3
ffmpeg -y -ss 2:16:13 -t 1:13:14 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-3.mp3
ffmpeg -y -ss 3:29:28 -t 1:11:23 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-4.mp3
ffmpeg -y -ss 4:40:51 -t 0:55:59 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-5.mp3
ffmpeg -y -ss 5:36:51 -t 0:38:39 -i BuddhistMeditation.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BuddhistMeditation-chapter-6.mp3
mv BuddhistMeditation.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 6` ; do mkdir $i; mv BuddhistMeditation-chapter-$i* $i/; done
for i in `seq 1 6` ; do cd $i; dotracks.sh 'Religion' 'BuddhistMeditation'; cd ..; done
