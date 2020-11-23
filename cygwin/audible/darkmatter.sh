ffmpeg -y -ss 0:00:00 -t 0:58:16 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-01.mp3
ffmpeg -y -ss 0:58:16 -t 0:36:34 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-02.mp3
ffmpeg -y -ss 1:34:50 -t 0:24:02 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-03.mp3
ffmpeg -y -ss 1:58:52 -t 0:06:33 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-04.mp3
ffmpeg -y -ss 2:05:25 -t 1:15:11 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-05.mp3
ffmpeg -y -ss 3:20:36 -t 0:09:47 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-06.mp3
ffmpeg -y -ss 3:30:23 -t 1:05:03 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-07.mp3
ffmpeg -y -ss 4:35:26 -t 0:57:14 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-08.mp3
ffmpeg -y -ss 5:32:40 -t 0:05:19 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-09.mp3
ffmpeg -y -ss 5:37:59 -t 0:51:52 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-10.mp3
ffmpeg -y -ss 6:29:51 -t 0:33:54 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-11.mp3
ffmpeg -y -ss 7:03:45 -t 0:19:08 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-12.mp3
ffmpeg -y -ss 7:22:53 -t 1:29:44 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-13.mp3
ffmpeg -y -ss 8:52:37 -t 1:02:33 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-14.mp3
ffmpeg -y -ss 9:55:10 -t 0:13:43 -i DarkMatter.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DarkMatter-chapter-15.mp3
mv DarkMatter.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv DarkMatter-chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Blake Crouch' 'DarkMatter'; cd ..; done
