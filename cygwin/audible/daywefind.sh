ffmpeg -y -ss 0:00:00 -t 0:49:52 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-01.mp3
ffmpeg -y -ss 0:49:52 -t 0:56:58 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-02.mp3
ffmpeg -y -ss 1:46:50 -t 0:45:02 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-03.mp3
ffmpeg -y -ss 2:31:52 -t 0:33:04 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-04.mp3
ffmpeg -y -ss 3:04:56 -t 0:44:40 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-05.mp3
ffmpeg -y -ss 3:49:36 -t 0:19:58 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-06.mp3
ffmpeg -y -ss 4:09:34 -t 0:25:02 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-07.mp3
ffmpeg -y -ss 4:34:36 -t 0:55:34 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-08.mp3
ffmpeg -y -ss 5:30:10 -t 0:33:29 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-09.mp3
ffmpeg -y -ss 6:03:39 -t 0:48:12 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-10.mp3
ffmpeg -y -ss 6:51:51 -t 0:30:21 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-11.mp3
ffmpeg -y -ss 7:22:12 -t 0:30:44 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-12.mp3
ffmpeg -y -ss 7:52:56 -t 0:58:12 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-13.mp3
ffmpeg -y -ss 8:51:08 -t 0:30:24 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-14.mp3
ffmpeg -y -ss 9:21:32 -t 0:27:07 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-15.mp3
ffmpeg -y -ss 9:48:39 -t 0:25:02 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-16.mp3
ffmpeg -y -ss 10:13:41 -t 0:19:30 -i DayWeFoundtheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DayWeFoundtheUniverse-Chapter-17.mp3

mv DayWeFoundtheUniverse.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv DayWeFoundtheUniverse-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Science' 'DayWeFoundtheUniverse'; cd ..; done
for i in `seq 10 17` ; do mkdir $i; mv DayWeFoundtheUniverse-Chapter-$i* $i/; done
for i in `seq 10 17` ; do cd $i; dotracks.sh 'Science' 'DayWeFoundtheUniverse'; cd ..; done
