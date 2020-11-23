ffmpeg -y -ss 0:00:00 -t 0:00:30 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-0.mp3
ffmpeg -y -ss 0:00:30 -t 1:10:13 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-1.mp3
ffmpeg -y -ss 1:10:43 -t 0:37:55 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-2.mp3
ffmpeg -y -ss 1:48:38 -t 0:24:56 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-3.mp3
ffmpeg -y -ss 2:13:34 -t 0:23:21 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-4.mp3
ffmpeg -y -ss 2:36:55 -t 1:27:52 -i XFilesColdCases.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  XFilesColdCases-chapter-5.mp3
mv XFilesColdCases.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv XFilesColdCases-chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Audible Originals' 'XFilesColdCases'; cd ..; done
