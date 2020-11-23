ffmpeg -y -ss 0:00:00 -t 0:15:18 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-01.mp3
ffmpeg -y -ss 0:15:18 -t 0:17:33 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-02.mp3
ffmpeg -y -ss 0:32:51 -t 0:12:21 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-03.mp3
ffmpeg -y -ss 0:45:12 -t 0:07:26 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-04.mp3
ffmpeg -y -ss 0:52:38 -t 0:10:54 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-05.mp3
ffmpeg -y -ss 1:03:32 -t 0:08:01 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-06.mp3
ffmpeg -y -ss 1:11:33 -t 0:10:34 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-07.mp3
ffmpeg -y -ss 1:22:07 -t 0:08:30 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-08.mp3
ffmpeg -y -ss 1:30:37 -t 0:13:46 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-09.mp3
ffmpeg -y -ss 1:44:23 -t 0:09:37 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-10.mp3
ffmpeg -y -ss 1:54:00 -t 0:12:47 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-11.mp3
ffmpeg -y -ss 2:06:47 -t 0:11:55 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-12.mp3
ffmpeg -y -ss 2:18:42 -t 0:05:39 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-13.mp3
ffmpeg -y -ss 2:24:21 -t 0:18:59 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-14.mp3
ffmpeg -y -ss 2:43:20 -t 0:18:53 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-15.mp3
ffmpeg -y -ss 3:02:13 -t 0:12:05 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-16.mp3
ffmpeg -y -ss 3:14:18 -t 0:10:42 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-17.mp3
ffmpeg -y -ss 3:25:00 -t 0:12:35 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-18.mp3
ffmpeg -y -ss 3:37:35 -t 0:05:40 -i Beowulf.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Beowulf-chapter-19.mp3
mv Beowulf.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Beowulf-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Anonymous' 'Beowulf'; cd ..; done
for i in `seq 10 19` ; do mkdir $i; mv Beowulf-chapter-$i* $i/; done
for i in `seq 10 19` ; do cd $i; dotracks.sh 'Anonymous' 'Beowulf'; cd ..; done
