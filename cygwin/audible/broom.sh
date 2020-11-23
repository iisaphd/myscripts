ffmpeg -y -ss 0:00:00 -t 0:41:40 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-01.mp3
ffmpeg -y -ss 0:41:40 -t 0:09:49 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-02.mp3
ffmpeg -y -ss 0:51:29 -t 0:50:52 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-03.mp3
ffmpeg -y -ss 1:42:21 -t 0:06:56 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-04.mp3
ffmpeg -y -ss 1:49:17 -t 0:55:17 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-05.mp3
ffmpeg -y -ss 2:44:34 -t 0:23:32 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-06.mp3
ffmpeg -y -ss 3:08:06 -t 0:46:04 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-07.mp3
ffmpeg -y -ss 3:54:10 -t 0:54:40 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-08.mp3
ffmpeg -y -ss 4:48:50 -t 0:37:09 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-09.mp3
ffmpeg -y -ss 5:25:59 -t 0:36:26 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-10.mp3
ffmpeg -y -ss 6:02:25 -t 1:47:59 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-11.mp3
ffmpeg -y -ss 7:50:24 -t 1:13:46 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-12.mp3
ffmpeg -y -ss 9:04:10 -t 0:49:12 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-13.mp3
ffmpeg -y -ss 9:53:22 -t 0:18:50 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-14.mp3
ffmpeg -y -ss 10:12:12 -t 0:39:00 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-15.mp3
ffmpeg -y -ss 10:51:12 -t 0:25:15 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-16.mp3
ffmpeg -y -ss 11:16:27 -t 1:25:29 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-17.mp3
ffmpeg -y -ss 12:41:56 -t 2:01:05 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-18.mp3
ffmpeg -y -ss 14:43:01 -t 0:51:38 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-19.mp3
ffmpeg -y -ss 15:34:39 -t 0:00:20 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-20.mp3
ffmpeg -y -ss 15:34:59 -t 0:29:56 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-21.mp3
ffmpeg -y -ss 16:04:55 -t 0:25:35 -i BroomoftheSystem.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BroomoftheSystem-Chapter-22.mp3
mv BroomoftheSystem.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; done
for i in `seq 0 2` ; do mkdir $i; mv BroomoftheSystem-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'David Foster Wallace' 'BroomoftheSystem' ; cd ..; done
