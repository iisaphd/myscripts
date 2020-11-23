ffmpeg -y -ss 0:00:00 -t 1:02:14 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-01.mp3
ffmpeg -y -ss 1:02:14 -t 1:06:15 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-02.mp3
ffmpeg -y -ss 2:08:29 -t 1:15:36 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-03.mp3
ffmpeg -y -ss 3:24:05 -t 1:09:32 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-04.mp3
ffmpeg -y -ss 4:33:37 -t 1:03:46 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-05.mp3
ffmpeg -y -ss 5:37:23 -t 1:08:13 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-06.mp3
ffmpeg -y -ss 6:45:36 -t 1:15:46 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-07.mp3
ffmpeg -y -ss 8:01:22 -t 1:01:35 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-08.mp3
ffmpeg -y -ss 9:02:57 -t 1:13:58 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-09.mp3
ffmpeg -y -ss 10:16:55 -t 1:04:18 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-10.mp3
ffmpeg -y -ss 11:21:13 -t 1:06:34 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-11.mp3
ffmpeg -y -ss 12:27:47 -t 1:00:58 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-12.mp3
ffmpeg -y -ss 13:28:45 -t 1:13:38 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-13.mp3
ffmpeg -y -ss 14:42:23 -t 1:07:51 -i Shining.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Shining-chapter-14.mp3










mv Shining.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Shining-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Stephen King' 'Shining'; cd ..; done
for i in `seq 10 14` ; do mkdir $i; mv Shining-chapter-$i* $i/; done
for i in `seq 10 14` ; do cd $i; dotracks.sh 'Stephen King' 'Shining'; cd ..; done
