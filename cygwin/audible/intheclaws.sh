ffmpeg -y -ss 0:00:00 -t 0:17:49 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-01.mp3
ffmpeg -y -ss 0:17:49 -t 0:21:36 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-02.mp3
ffmpeg -y -ss 0:39:25 -t 0:31:50 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-03.mp3
ffmpeg -y -ss 1:11:15 -t 0:46:24 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-04.mp3
ffmpeg -y -ss 1:57:39 -t 0:33:53 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-05.mp3
ffmpeg -y -ss 2:31:32 -t 0:36:52 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-06.mp3
ffmpeg -y -ss 3:08:24 -t 0:32:53 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-07.mp3
ffmpeg -y -ss 3:41:17 -t 0:35:01 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-08.mp3
ffmpeg -y -ss 4:16:18 -t 0:33:15 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-09.mp3
ffmpeg -y -ss 4:49:33 -t 0:33:39 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-10.mp3
ffmpeg -y -ss 5:23:12 -t 0:32:51 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-11.mp3
ffmpeg -y -ss 5:56:03 -t 0:32:43 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-12.mp3
ffmpeg -y -ss 6:28:46 -t 0:39:40 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-13.mp3
ffmpeg -y -ss 7:08:26 -t 0:29:36 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-14.mp3
ffmpeg -y -ss 7:38:02 -t 0:19:59 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-15.mp3
ffmpeg -y -ss 7:58:01 -t 0:22:47 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-16.mp3
ffmpeg -y -ss 8:20:48 -t 0:29:44 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-17.mp3
ffmpeg -y -ss 8:50:32 -t 0:29:38 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-18.mp3
ffmpeg -y -ss 9:20:10 -t 0:16:54 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-19.mp3
ffmpeg -y -ss 9:37:04 -t 0:28:14 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-20.mp3
ffmpeg -y -ss 10:05:18 -t 0:03:24 -i IntheClawsoftheTiger.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IntheClawsoftheTiger-chapter-21.mp3



mv IntheClawsoftheTiger.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv IntheClawsoftheTiger-chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'WotC' 'IntheClawsoftheTiger'; cd ..; done
