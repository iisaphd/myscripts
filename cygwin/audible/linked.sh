ffmpeg -y -ss 0:00:00 -t 0:00:17 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-00.mp3
ffmpeg -y -ss 0:00:17 -t 0:16:27 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-01.mp3
ffmpeg -y -ss 0:16:44 -t 0:34:26 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-02.mp3
ffmpeg -y -ss 0:51:10 -t 0:35:37 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-03.mp3
ffmpeg -y -ss 1:26:47 -t 0:29:27 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-04.mp3
ffmpeg -y -ss 1:56:14 -t 0:22:39 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-05.mp3
ffmpeg -y -ss 2:18:53 -t 0:29:34 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-06.mp3
ffmpeg -y -ss 2:48:27 -t 0:29:20 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-07.mp3
ffmpeg -y -ss 3:17:47 -t 0:33:29 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-08.mp3
ffmpeg -y -ss 3:51:16 -t 0:31:09 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-09.mp3
ffmpeg -y -ss 4:22:25 -t 0:42:29 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-10.mp3
ffmpeg -y -ss 5:04:54 -t 0:35:11 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-11.mp3
ffmpeg -y -ss 5:40:05 -t 0:39:45 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-12.mp3
ffmpeg -y -ss 6:19:50 -t 0:43:57 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-13.mp3
ffmpeg -y -ss 7:03:47 -t 0:42:50 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-14.mp3
ffmpeg -y -ss 7:46:37 -t 0:16:28 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-15.mp3
ffmpeg -y -ss 8:03:05 -t 0:00:30 -i Linked.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Linked-Chapter-16.mp3
mv Linked.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv Linked-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Science' 'Linked'; cd ..; done
