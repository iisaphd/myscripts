ffmpeg -y -ss 0:00:00 -t 0:58:29 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-01.mp3
ffmpeg -y -ss 0:58:29 -t 0:46:35 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-02.mp3
ffmpeg -y -ss 1:45:04 -t 0:15:17 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-03.mp3
ffmpeg -y -ss 2:00:21 -t 1:05:55 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-04.mp3
ffmpeg -y -ss 3:06:16 -t 0:37:30 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-05.mp3
ffmpeg -y -ss 3:43:46 -t 1:05:55 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-06.mp3
ffmpeg -y -ss 4:49:41 -t 0:42:30 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-07.mp3
ffmpeg -y -ss 5:32:11 -t 0:54:15 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-08.mp3
ffmpeg -y -ss 6:26:26 -t 0:42:16 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-09.mp3
ffmpeg -y -ss 7:08:42 -t 0:28:02 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-10.mp3
ffmpeg -y -ss 7:36:44 -t 0:21:05 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-11.mp3
ffmpeg -y -ss 7:57:49 -t 0:51:57 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-12.mp3
ffmpeg -y -ss 8:49:46 -t 1:34:18 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-13.mp3
ffmpeg -y -ss 10:24:04 -t 0:45:29 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-14.mp3
ffmpeg -y -ss 11:09:33 -t 1:28:56 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-15.mp3
ffmpeg -y -ss 12:38:29 -t 1:07:32 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-16.mp3
ffmpeg -y -ss 13:46:01 -t 0:43:25 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-17.mp3
ffmpeg -y -ss 14:29:26 -t 1:00:30 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-18.mp3
ffmpeg -y -ss 15:29:56 -t 0:59:35 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-19.mp3
ffmpeg -y -ss 16:29:31 -t 0:18:11 -i LibraryatMountChar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LibraryatMountChar-chapter-20.mp3




mv LibraryatMountChar.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv LibraryatMountChar-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Scott Hawkins' 'LibraryatMountChar'; cd ..; done
for i in `seq 10 20` ; do mkdir $i; mv LibraryatMountChar-chapter-$i* $i/; done
for i in `seq 10 20` ; do cd $i; dotracks.sh 'Scott Hawkins' 'LibraryatMountChar'; cd ..; done
