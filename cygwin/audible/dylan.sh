ffmpeg -y -ss 0:00:00 -t 0:09:17 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-00.mp3
ffmpeg -y -ss 0:09:17 -t 0:30:18 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-01.mp3
ffmpeg -y -ss 0:39:35 -t 0:33:17 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-02.mp3
ffmpeg -y -ss 1:12:53 -t 0:38:48 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-03.mp3
ffmpeg -y -ss 1:51:41 -t 0:34:08 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-04.mp3
ffmpeg -y -ss 2:25:50 -t 0:33:07 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-05.mp3
ffmpeg -y -ss 2:58:57 -t 0:34:08 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-06.mp3
ffmpeg -y -ss 3:33:06 -t 0:35:12 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-07.mp3
ffmpeg -y -ss 4:08:18 -t 0:53:26 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-08.mp3
ffmpeg -y -ss 5:01:45 -t 0:51:29 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-09.mp3
ffmpeg -y -ss 5:53:14 -t 1:00:53 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-10.mp3
ffmpeg -y -ss 6:54:08 -t 1:08:10 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-11.mp3
ffmpeg -y -ss 8:02:18 -t 0:57:59 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-12.mp3
ffmpeg -y -ss 9:00:18 -t 0:42:59 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-13.mp3
ffmpeg -y -ss 9:43:17 -t 0:48:54 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-14.mp3
ffmpeg -y -ss 10:32:12 -t 0:58:10 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-15.mp3
ffmpeg -y -ss 11:30:22 -t 0:58:19 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-16.mp3
ffmpeg -y -ss 12:28:42 -t 0:37:10 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-17.mp3
ffmpeg -y -ss 13:05:52 -t 1:05:01 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-18.mp3
ffmpeg -y -ss 14:10:54 -t 0:56:32 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-19.mp3
ffmpeg -y -ss 15:07:26 -t 1:12:48 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-20.mp3
ffmpeg -y -ss 16:20:15 -t 0:40:17 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-21.mp3
ffmpeg -y -ss 17:00:32 -t 1:02:50 -i DylanThomas.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DylanThomas-chapter-22.mp3
mv DylanThomas.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv DylanThomas-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'History' 'DylanThomas'; cd ..; done
for i in `seq 10 22` ; do mkdir $i; mv DylanThomas-chapter-$i* $i/; done
for i in `seq 10 22` ; do cd $i; dotracks.sh 'History' 'DylanThomas'; cd ..; done
