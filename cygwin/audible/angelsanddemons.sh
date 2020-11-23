ffmpeg -y -ss 0:00:00 -t 1:11:57 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-01.mp3
ffmpeg -y -ss 1:11:57 -t 1:14:35 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-02.mp3
ffmpeg -y -ss 2:26:32 -t 1:15:27 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-03.mp3
ffmpeg -y -ss 3:41:59 -t 1:15:20 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-04.mp3
ffmpeg -y -ss 4:57:19 -t 1:15:26 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-05.mp3
ffmpeg -y -ss 6:12:45 -t 1:11:52 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-06.mp3
ffmpeg -y -ss 7:24:37 -t 1:15:18 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-07.mp3
ffmpeg -y -ss 8:39:55 -t 1:15:16 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-08.mp3
ffmpeg -y -ss 9:55:11 -t 1:15:01 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-09.mp3
ffmpeg -y -ss 11:10:12 -t 1:14:58 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-10.mp3
ffmpeg -y -ss 12:25:10 -t 1:12:46 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-11.mp3
ffmpeg -y -ss 13:37:56 -t 1:14:57 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-12.mp3
ffmpeg -y -ss 14:52:53 -t 1:13:12 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-13.mp3
ffmpeg -y -ss 16:06:05 -t 1:10:15 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-14.mp3
ffmpeg -y -ss 17:16:20 -t 1:12:46 -i AngelsAndDemons.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AngelsAndDemons-chapter-15.mp3
mv AngelsAndDemons.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv AngelsAndDemons-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Dan Brown' 'AngelsAndDemons'; cd ..; done
for i in `seq 10 15` ; do mkdir $i; mv AngelsAndDemons-chapter-$i* $i/; done
for i in `seq 10 15` ; do cd $i; dotracks.sh 'Dan Brown' 'AngelsAndDemons'; cd ..; done
