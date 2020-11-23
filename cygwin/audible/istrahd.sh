ffmpeg -y -ss 0:00:00 -t 0:16:23 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-00.mp3
ffmpeg -y -ss 0:16:23 -t 1:01:49 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-01.mp3
ffmpeg -y -ss 1:18:12 -t 0:54:42 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-02.mp3
ffmpeg -y -ss 2:12:54 -t 0:50:17 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-03.mp3
ffmpeg -y -ss 3:03:11 -t 0:54:28 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-04.mp3
ffmpeg -y -ss 3:57:39 -t 0:55:33 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-05.mp3
ffmpeg -y -ss 4:53:12 -t 0:55:52 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-06.mp3
ffmpeg -y -ss 5:49:04 -t 1:17:03 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-07.mp3
ffmpeg -y -ss 7:06:07 -t 0:49:30 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-08.mp3
ffmpeg -y -ss 7:55:37 -t 0:08:59 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-09.mp3
ffmpeg -y -ss 8:04:36 -t 0:04:18 -i Istrahd.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Istrahd-chapter-10.mp3
mv Istrahd.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv Istrahd-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'WotC' 'Istrahd'; cd ..; done
for i in `seq 10 10` ; do mkdir $i; mv Istrahd-chapter-$i* $i/; done
for i in `seq 10 10` ; do cd $i; dotracks.sh 'WotC' 'Istrahd'; cd ..; done
