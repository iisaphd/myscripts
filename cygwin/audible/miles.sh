ffmpeg -y -ss 0:00:00 -t 0:59:06 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-01.mp3
ffmpeg -y -ss 0:59:06 -t 0:51:19 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-02.mp3
ffmpeg -y -ss 1:50:25 -t 1:00:09 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-03.mp3
ffmpeg -y -ss 2:50:34 -t 1:01:25 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-04.mp3
ffmpeg -y -ss 3:51:59 -t 1:18:12 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-05.mp3
ffmpeg -y -ss 5:10:11 -t 0:35:11 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-06.mp3
ffmpeg -y -ss 5:45:22 -t 0:37:45 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-07.mp3
ffmpeg -y -ss 6:23:07 -t 0:35:21 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-08.mp3
ffmpeg -y -ss 6:58:28 -t 1:04:09 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-09.mp3
ffmpeg -y -ss 8:02:37 -t 0:54:50 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-10.mp3
ffmpeg -y -ss 8:57:27 -t 1:05:18 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-11.mp3
ffmpeg -y -ss 10:02:45 -t 1:00:52 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-12.mp3
ffmpeg -y -ss 11:03:37 -t 0:48:53 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-13.mp3
ffmpeg -y -ss 11:52:30 -t 0:49:47 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-14.mp3
ffmpeg -y -ss 12:42:17 -t 0:54:47 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-15.mp3
ffmpeg -y -ss 13:37:04 -t 0:21:30 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-16.mp3
ffmpeg -y -ss 13:58:34 -t 0:39:51 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-17.mp3
ffmpeg -y -ss 14:38:25 -t 0:48:11 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-18.mp3
ffmpeg -y -ss 15:26:36 -t 0:36:26 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-19.mp3
ffmpeg -y -ss 16:03:02 -t 0:47:55 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-20.mp3
ffmpeg -y -ss 16:50:57 -t 0:05:27 -i Miles.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Miles-Chapter-21.mp3
mv Miles.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Miles-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Jazz' 'Miles'; cd ..; done
for i in `seq 10 21` ; do mkdir $i; mv Miles-Chapter-$i* $i/; done
for i in `seq 10 21` ; do cd $i; dotracks.sh 'Jazz' 'Miles'; cd ..; done
