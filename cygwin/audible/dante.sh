ffmpeg -y -ss 0:00:00 -t 0:32:26 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-01.mp3
ffmpeg -y -ss 0:32:26 -t 0:35:29 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-02.mp3
ffmpeg -y -ss 1:07:55 -t 0:35:31 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-03.mp3
ffmpeg -y -ss 1:43:26 -t 0:34:42 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-04.mp3
ffmpeg -y -ss 2:18:08 -t 0:37:04 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-05.mp3
ffmpeg -y -ss 2:55:12 -t 0:35:31 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-06.mp3
ffmpeg -y -ss 3:30:43 -t 0:38:32 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-07.mp3
ffmpeg -y -ss 4:09:15 -t 0:38:05 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-08.mp3
ffmpeg -y -ss 4:47:20 -t 0:39:00 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-09.mp3
ffmpeg -y -ss 5:26:20 -t 0:40:20 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-10.mp3
ffmpeg -y -ss 6:06:40 -t 0:44:06 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-11.mp3
ffmpeg -y -ss 6:50:46 -t 0:41:23 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-12.mp3
ffmpeg -y -ss 7:32:09 -t 0:42:01 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-13.mp3
ffmpeg -y -ss 8:14:10 -t 0:33:41 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-14.mp3
ffmpeg -y -ss 8:47:51 -t 0:36:47 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-15.mp3
ffmpeg -y -ss 9:24:38 -t 0:41:05 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-16.mp3
ffmpeg -y -ss 10:05:43 -t 0:38:43 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-17.mp3
ffmpeg -y -ss 10:44:26 -t 0:39:14 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-18.mp3
ffmpeg -y -ss 11:23:40 -t 0:40:54 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-19.mp3
ffmpeg -y -ss 12:04:34 -t 0:40:22 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-20.mp3
ffmpeg -y -ss 12:44:56 -t 0:33:00 -i DivineComedy.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DivineComedy-Chapter-21.mp3
mv DivineComedy.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir $i; mv DivineComedy-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Dante' 'DivineComedy'; cd ..; done
for i in `seq 10 21` ; do mkdir $i; mv DivineComedy-Chapter-$i* $i/; done
for i in `seq 10 21` ; do cd $i; dotracks.sh 'Dante' 'DivineComedy'; cd ..; done
