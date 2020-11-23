ffmpeg -y -ss 0:00:00 -t 0:08:38 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-00.mp3
ffmpeg -y -ss 0:08:38 -t 0:46:40 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-01.mp3
ffmpeg -y -ss 0:55:18 -t 0:49:13 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-02.mp3
ffmpeg -y -ss 1:44:31 -t 0:28:38 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-03.mp3
ffmpeg -y -ss 2:13:09 -t 0:31:51 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-04.mp3
ffmpeg -y -ss 2:45:00 -t 0:18:25 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-05.mp3
ffmpeg -y -ss 3:03:25 -t 0:27:40 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-06.mp3
ffmpeg -y -ss 3:31:05 -t 0:23:56 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-07.mp3
ffmpeg -y -ss 3:55:01 -t 0:38:39 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-08.mp3
ffmpeg -y -ss 4:33:40 -t 0:49:12 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-09.mp3
ffmpeg -y -ss 5:22:52 -t 1:33:47 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-10.mp3
ffmpeg -y -ss 6:56:39 -t 1:04:00 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-11.mp3
ffmpeg -y -ss 8:00:39 -t 1:06:37 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-12.mp3
ffmpeg -y -ss 9:07:16 -t 1:18:27 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-13.mp3
ffmpeg -y -ss 10:25:43 -t 1:17:14 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-14.mp3
ffmpeg -y -ss 11:42:57 -t 1:04:56 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-15.mp3
ffmpeg -y -ss 12:47:53 -t 0:49:17 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-16.mp3
ffmpeg -y -ss 13:37:10 -t 0:46:11 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-17.mp3
ffmpeg -y -ss 14:23:21 -t 0:50:49 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-18.mp3
ffmpeg -y -ss 15:14:10 -t 0:59:26 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-19.mp3
ffmpeg -y -ss 16:13:36 -t 0:55:36 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-20.mp3
ffmpeg -y -ss 17:09:12 -t 0:56:23 -i TheDreamofReason.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheDreamofReason-Chapter-21.mp3
mv TheDreamofReason.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv TheDreamofReason-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Anthony Gottleib' 'TheDreamofReason'; cd ..; done
