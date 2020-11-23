ffmpeg -y -ss 0:00:00 -t 0:59:51 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-01.mp3
ffmpeg -y -ss 0:59:51 -t 1:14:36 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-02.mp3
ffmpeg -y -ss 2:14:27 -t 1:14:57 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-03.mp3
ffmpeg -y -ss 3:29:25 -t 1:16:55 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-04.mp3
ffmpeg -y -ss 4:46:20 -t 1:15:31 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-05.mp3
ffmpeg -y -ss 6:01:52 -t 1:14:04 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-06.mp3
ffmpeg -y -ss 7:15:56 -t 1:15:51 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-07.mp3
ffmpeg -y -ss 8:31:48 -t 1:08:32 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-08.mp3
ffmpeg -y -ss 9:40:20 -t 1:15:12 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-09.mp3
ffmpeg -y -ss 10:55:33 -t 1:12:45 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-10.mp3
ffmpeg -y -ss 12:08:18 -t 1:19:07 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-11.mp3
ffmpeg -y -ss 13:27:26 -t 1:17:21 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-12.mp3
ffmpeg -y -ss 14:44:47 -t 1:14:34 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-13.mp3
ffmpeg -y -ss 15:59:22 -t 1:16:02 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-14.mp3
ffmpeg -y -ss 17:15:24 -t 1:13:54 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-15.mp3
ffmpeg -y -ss 18:29:19 -t 1:17:50 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-16.mp3
ffmpeg -y -ss 19:47:09 -t 1:17:12 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-17.mp3
ffmpeg -y -ss 21:04:22 -t 1:17:05 -i CanterburyTales.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CanterburyTales-chapter-18.mp3






mv CanterburyTales.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv CanterburyTales-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Geoffrey Chaucer' 'CanterburyTales'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv CanterburyTales-chapter-$i* $i/; done
for i in `seq 10 18` ; do cd $i; dotracks.sh 'Geoffrey Chaucer' 'CanterburyTales'; cd ..; done
