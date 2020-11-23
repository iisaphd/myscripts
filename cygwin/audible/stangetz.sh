ffmpeg -y -ss 0:00:00 -t 0:07:42 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-00.mp3
ffmpeg -y -ss 0:07:42 -t 0:34:00 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-01.mp3
ffmpeg -y -ss 0:41:42 -t 0:41:40 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-02.mp3
ffmpeg -y -ss 1:23:22 -t 0:34:31 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-03.mp3
ffmpeg -y -ss 1:57:53 -t 0:53:17 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-04.mp3
ffmpeg -y -ss 2:51:10 -t 0:38:49 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-05.mp3
ffmpeg -y -ss 3:29:59 -t 0:47:12 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-06.mp3
ffmpeg -y -ss 4:17:11 -t 1:00:24 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-07.mp3
ffmpeg -y -ss 5:17:35 -t 0:22:18 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-08.mp3
ffmpeg -y -ss 5:39:53 -t 0:28:52 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-09.mp3
ffmpeg -y -ss 6:08:45 -t 0:43:33 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-10.mp3
ffmpeg -y -ss 6:52:18 -t 0:32:29 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-11.mp3
ffmpeg -y -ss 7:24:47 -t 0:59:02 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-12.mp3
ffmpeg -y -ss 8:23:49 -t 0:53:29 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-13.mp3
ffmpeg -y -ss 9:17:18 -t 0:43:56 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-14.mp3
ffmpeg -y -ss 10:01:14 -t 0:38:22 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-15.mp3
ffmpeg -y -ss 10:39:36 -t 1:02:47 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-16.mp3
ffmpeg -y -ss 11:42:23 -t 0:54:29 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-17.mp3
ffmpeg -y -ss 12:36:52 -t 0:50:30 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-18.mp3
ffmpeg -y -ss 13:27:22 -t 0:36:11 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-19.mp3
ffmpeg -y -ss 14:03:33 -t 0:43:34 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-20.mp3
ffmpeg -y -ss 14:47:07 -t 0:29:04 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-21.mp3
ffmpeg -y -ss 15:16:11 -t 0:33:00 -i StanGetz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  StanGetz-Chapter-22.mp3
mv StanGetz.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv StanGetz-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Jazz' 'StanGetz'; cd ..; done
for i in `seq 10 22` ; do mkdir $i; mv StanGetz-Chapter-$i* $i/; done
for i in `seq 10 22` ; do cd $i; dotracks.sh 'Jazz' 'StanGetz'; cd ..; done
