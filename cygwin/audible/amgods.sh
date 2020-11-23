ffmpeg -y -ss 0:00:00 -t 1:00:22 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-01.mp3
ffmpeg -y -ss 1:00:22 -t 0:44:24 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-02.mp3
ffmpeg -y -ss 1:44:46 -t 0:31:57 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-03.mp3
ffmpeg -y -ss 2:16:43 -t 1:10:18 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-04.mp3
ffmpeg -y -ss 3:27:01 -t 0:52:40 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-05.mp3
ffmpeg -y -ss 4:19:41 -t 0:50:21 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-06.mp3
ffmpeg -y -ss 5:10:02 -t 1:21:11 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-07.mp3
ffmpeg -y -ss 6:31:13 -t 1:26:16 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-08.mp3
ffmpeg -y -ss 7:57:29 -t 0:53:34 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-09.mp3
ffmpeg -y -ss 8:51:03 -t 1:04:14 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-10.mp3
ffmpeg -y -ss 9:55:17 -t 1:40:54 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-11.mp3
ffmpeg -y -ss 11:36:11 -t 1:26:16 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-12.mp3
ffmpeg -y -ss 13:02:27 -t 1:14:47 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-13.mp3
ffmpeg -y -ss 14:17:14 -t 1:01:08 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-14.mp3
ffmpeg -y -ss 15:18:22 -t 0:40:50 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-15.mp3
ffmpeg -y -ss 15:59:12 -t 0:33:17 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-16.mp3
ffmpeg -y -ss 16:32:29 -t 0:50:07 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-17.mp3
ffmpeg -y -ss 17:22:36 -t 1:17:49 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-18.mp3
ffmpeg -y -ss 18:40:25 -t 0:13:54 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-19.mp3
ffmpeg -y -ss 18:54:19 -t 1:01:37 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-20.mp3
ffmpeg -y -ss 19:55:56 -t 0:09:30 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-21.mp3
ffmpeg -y -ss 20:05:26 -t 0:39:00 -i AmericanGods.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AmericanGods-Chapter-22.mp3
mv AmericanGods.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv AmericanGods-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Neil Gaiman' 'AmericanGods'; cd ..; done
