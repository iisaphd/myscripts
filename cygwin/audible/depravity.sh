ffmpeg -y -ss 0:00:00 -t 0:18:31 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-01.mp3
ffmpeg -y -ss 0:18:31 -t 0:33:44 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-02.mp3
ffmpeg -y -ss 0:52:15 -t 0:33:12 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-03.mp3
ffmpeg -y -ss 1:25:28 -t 0:48:00 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-04.mp3
ffmpeg -y -ss 2:13:28 -t 0:40:05 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-05.mp3
ffmpeg -y -ss 2:53:34 -t 0:46:09 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-06.mp3
ffmpeg -y -ss 3:39:43 -t 0:28:41 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-07.mp3
ffmpeg -y -ss 4:08:25 -t 0:34:17 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-08.mp3
ffmpeg -y -ss 4:42:42 -t 0:23:31 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-09.mp3
ffmpeg -y -ss 5:06:14 -t 0:49:00 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-10.mp3
ffmpeg -y -ss 5:55:14 -t 0:33:28 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-11.mp3
ffmpeg -y -ss 6:28:43 -t 0:40:47 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-12.mp3
ffmpeg -y -ss 7:09:30 -t 0:32:07 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-13.mp3
ffmpeg -y -ss 7:41:38 -t 0:41:05 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-14.mp3
ffmpeg -y -ss 8:22:43 -t 0:31:04 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-15.mp3
ffmpeg -y -ss 8:53:48 -t 0:29:20 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-16.mp3
ffmpeg -y -ss 9:23:08 -t 0:37:35 -i Depravity.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Depravity-chapter-17.mp3




mv Depravity.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Depravity-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'History' 'Depravity'; cd ..; done
for i in `seq 10 17` ; do mkdir $i; mv Depravity-chapter-$i* $i/; done
for i in `seq 10 17` ; do cd $i; dotracks.sh 'History' 'Depravity'; cd ..; done
