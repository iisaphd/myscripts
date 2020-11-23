ffmpeg -y -ss 0:00:00 -t 0:05:11 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-00.mp3
ffmpeg -y -ss 0:05:11 -t 0:19:29 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-01.mp3
ffmpeg -y -ss 0:24:40 -t 0:27:58 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-02.mp3
ffmpeg -y -ss 0:52:38 -t 0:20:57 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-03.mp3
ffmpeg -y -ss 1:13:35 -t 0:14:44 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-04.mp3
ffmpeg -y -ss 1:28:19 -t 0:16:34 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-05.mp3
ffmpeg -y -ss 1:44:53 -t 0:17:56 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-06.mp3
ffmpeg -y -ss 2:02:49 -t 0:18:55 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-07.mp3
ffmpeg -y -ss 2:21:44 -t 0:13:51 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-08.mp3
ffmpeg -y -ss 2:35:35 -t 0:21:43 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-09.mp3
ffmpeg -y -ss 2:57:18 -t 0:17:12 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-10.mp3
ffmpeg -y -ss 3:14:30 -t 0:13:41 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-11.mp3
ffmpeg -y -ss 3:28:11 -t 0:27:24 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-12.mp3
ffmpeg -y -ss 3:55:35 -t 0:14:43 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-13.mp3
ffmpeg -y -ss 4:10:18 -t 0:12:54 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-14.mp3
ffmpeg -y -ss 4:23:12 -t 0:13:29 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-15.mp3
ffmpeg -y -ss 4:36:41 -t 0:32:39 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-16.mp3
ffmpeg -y -ss 5:09:20 -t 0:30:04 -i SeashellontheMountaintop.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SeashellontheMountaintop-chapter-17.mp3
mv SeashellontheMountaintop.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv SeashellontheMountaintop-chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Science' 'SeashellontheMountaintop'; cd ..; done
