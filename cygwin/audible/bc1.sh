ffmpeg -y -ss 0:00:00 -t 0:02:05 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-00.mp3
ffmpeg -y -ss 0:02:05 -t 0:57:18 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-01.mp3
ffmpeg -y -ss 0:59:23 -t 0:28:00 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-02.mp3
ffmpeg -y -ss 1:27:23 -t 0:45:37 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-03.mp3
ffmpeg -y -ss 2:13:00 -t 0:33:20 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-04.mp3
ffmpeg -y -ss 2:46:20 -t 0:52:40 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-05.mp3
ffmpeg -y -ss 3:39:00 -t 0:27:28 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-06.mp3
ffmpeg -y -ss 4:06:28 -t 0:54:07 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-07.mp3
ffmpeg -y -ss 5:00:35 -t 1:05:23 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-08.mp3
ffmpeg -y -ss 6:05:58 -t 0:24:49 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-09.mp3
ffmpeg -y -ss 6:30:47 -t 0:41:28 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-10.mp3
ffmpeg -y -ss 7:12:15 -t 0:53:13 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-11.mp3
ffmpeg -y -ss 8:05:28 -t 0:23:45 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-12.mp3
ffmpeg -y -ss 8:29:13 -t 0:57:33 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-13.mp3
ffmpeg -y -ss 9:26:46 -t 0:22:43 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-14.mp3
ffmpeg -y -ss 9:49:29 -t 0:38:01 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-15.mp3
ffmpeg -y -ss 10:27:30 -t 0:59:16 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-16.mp3
ffmpeg -y -ss 11:26:46 -t 0:49:04 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-17.mp3
ffmpeg -y -ss 12:15:50 -t 0:56:35 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-18.mp3
ffmpeg -y -ss 13:12:25 -t 0:42:43 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-19.mp3
ffmpeg -y -ss 13:55:08 -t 0:36:00 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-20.mp3
ffmpeg -y -ss 14:31:08 -t 0:12:35 -i Quicksilver.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quicksilver-Chapter-21.mp3
mv Quicksilver.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv Quicksilver-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Neal Stephenson' 'Quicksilver'; cd ..; done
