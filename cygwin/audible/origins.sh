ffmpeg -y -ss 0:00:00 -t 0:20:10 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-00.mp3
ffmpeg -y -ss 0:20:10 -t 0:25:49 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-01.mp3
ffmpeg -y -ss 0:45:59 -t 0:12:33 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-02.mp3
ffmpeg -y -ss 0:58:32 -t 0:21:01 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-03.mp3
ffmpeg -y -ss 1:19:33 -t 0:26:58 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-04.mp3
ffmpeg -y -ss 1:46:31 -t 0:42:37 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-05.mp3
ffmpeg -y -ss 2:29:08 -t 0:19:13 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-06.mp3
ffmpeg -y -ss 2:48:21 -t 0:21:27 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-07.mp3
ffmpeg -y -ss 3:09:48 -t 0:45:28 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-08.mp3
ffmpeg -y -ss 3:55:16 -t 0:40:34 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-09.mp3
ffmpeg -y -ss 4:35:50 -t 0:27:12 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-10.mp3
ffmpeg -y -ss 5:03:02 -t 0:21:41 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-11.mp3
ffmpeg -y -ss 5:24:43 -t 0:19:24 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-12.mp3
ffmpeg -y -ss 5:44:07 -t 0:35:50 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-13.mp3
ffmpeg -y -ss 6:19:57 -t 0:15:09 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-14.mp3
ffmpeg -y -ss 6:35:06 -t 0:35:22 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-15.mp3
ffmpeg -y -ss 7:10:28 -t 0:47:56 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-16.mp3
ffmpeg -y -ss 7:58:24 -t 0:32:01 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-17.mp3
ffmpeg -y -ss 8:30:25 -t 0:08:51 -i Origins.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Origins-Chapter-18.mp3

mv Origins.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv Origins-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Neil de Grasse Tyson' 'Origins'; cd ..; done
