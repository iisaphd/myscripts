ffmpeg -y -ss 0:00:00 -t 0:13:39 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-00.mp3
ffmpeg -y -ss 0:13:39 -t 0:25:15 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-01.mp3
ffmpeg -y -ss 0:38:54 -t 1:23:16 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-02.mp3
ffmpeg -y -ss 2:02:10 -t 0:49:51 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-03.mp3
ffmpeg -y -ss 2:52:01 -t 0:59:06 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-04.mp3
ffmpeg -y -ss 3:51:07 -t 0:51:10 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-05.mp3
ffmpeg -y -ss 4:42:17 -t 0:35:10 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-06.mp3
ffmpeg -y -ss 5:17:27 -t 1:13:40 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-07.mp3
ffmpeg -y -ss 6:31:07 -t 0:49:47 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-08.mp3
ffmpeg -y -ss 7:20:54 -t 0:48:28 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-09.mp3
ffmpeg -y -ss 8:09:22 -t 1:17:20 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-10.mp3
ffmpeg -y -ss 9:26:42 -t 0:31:24 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-11.mp3
ffmpeg -y -ss 9:58:06 -t 0:42:16 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-12.mp3
ffmpeg -y -ss 10:40:22 -t 0:46:41 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-13.mp3
ffmpeg -y -ss 11:27:03 -t 0:54:48 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-14.mp3
ffmpeg -y -ss 12:21:51 -t 0:53:21 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-15.mp3
ffmpeg -y -ss 13:15:12 -t 0:39:21 -i MadCatastrophy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MadCatastrophy-chapter-16.mp3
mv MadCatastrophy.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv MadCatastrophy-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'History' 'MadCatastrophy'; cd ..; done
for i in `seq 10 16` ; do mkdir $i; mv MadCatastrophy-chapter-$i* $i/; done
for i in `seq 10 16` ; do cd $i; dotracks.sh 'History' 'MadCatastrophy'; cd ..; done
