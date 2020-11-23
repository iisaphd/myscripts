ffmpeg -y -ss 0:00:00 -t 0:14:31 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-01.mp3
ffmpeg -y -ss 0:14:31 -t 0:14:01 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-02.mp3
ffmpeg -y -ss 0:28:32 -t 0:21:52 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-03.mp3
ffmpeg -y -ss 0:50:24 -t 0:14:17 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-04.mp3
ffmpeg -y -ss 1:04:41 -t 0:15:35 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-05.mp3
ffmpeg -y -ss 1:20:16 -t 0:13:28 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-06.mp3
ffmpeg -y -ss 1:33:44 -t 0:15:41 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-07.mp3
ffmpeg -y -ss 1:49:25 -t 0:17:41 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-08.mp3
ffmpeg -y -ss 2:07:06 -t 0:14:17 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-09.mp3
ffmpeg -y -ss 2:21:23 -t 0:17:48 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-10.mp3
ffmpeg -y -ss 2:39:11 -t 0:17:59 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-11.mp3
ffmpeg -y -ss 2:57:10 -t 0:18:25 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-12.mp3
ffmpeg -y -ss 3:15:35 -t 0:18:25 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-13.mp3
ffmpeg -y -ss 3:34:00 -t 0:16:27 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-14.mp3
ffmpeg -y -ss 3:50:27 -t 0:21:03 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-15.mp3
ffmpeg -y -ss 4:11:30 -t 0:19:26 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-16.mp3
ffmpeg -y -ss 4:30:56 -t 0:17:29 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-17.mp3
ffmpeg -y -ss 4:48:25 -t 0:13:59 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-18.mp3
ffmpeg -y -ss 5:02:24 -t 0:12:54 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-19.mp3
ffmpeg -y -ss 5:15:18 -t 0:14:16 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-20.mp3
ffmpeg -y -ss 5:29:34 -t 0:14:03 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-21.mp3
ffmpeg -y -ss 5:43:37 -t 0:19:21 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-22.mp3
ffmpeg -y -ss 6:02:58 -t 0:08:39 -i LiveandLetDie.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiveandLetDie-chapter-23.mp3

mv LiveandLetDie.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv LiveandLetDie-chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Ian Fleming' 'LiveandLetDie'; cd ..; done
