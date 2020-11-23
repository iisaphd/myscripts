ffmpeg -y -ss 0:00:00 -t 0:35:49 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-01.mp3
ffmpeg -y -ss 0:35:49 -t 1:13:26 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-02.mp3
ffmpeg -y -ss 1:49:15 -t 0:26:25 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-03.mp3
ffmpeg -y -ss 2:15:40 -t 0:43:02 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-04.mp3
ffmpeg -y -ss 2:58:42 -t 0:42:33 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-05.mp3
ffmpeg -y -ss 3:41:15 -t 0:13:47 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-06.mp3
ffmpeg -y -ss 3:55:02 -t 0:40:50 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-07.mp3
ffmpeg -y -ss 4:35:52 -t 0:07:18 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-08.mp3
ffmpeg -y -ss 4:43:10 -t 0:15:26 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-09.mp3
ffmpeg -y -ss 4:58:36 -t 0:38:47 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-10.mp3
ffmpeg -y -ss 5:37:23 -t 0:23:44 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-11.mp3
ffmpeg -y -ss 6:01:07 -t 0:20:29 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-12.mp3
ffmpeg -y -ss 6:21:36 -t 0:19:10 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-13.mp3
ffmpeg -y -ss 6:40:46 -t 0:24:06 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-14.mp3
ffmpeg -y -ss 7:04:52 -t 0:26:38 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-15.mp3
ffmpeg -y -ss 7:31:30 -t 0:37:42 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-16.mp3
ffmpeg -y -ss 8:09:12 -t 0:50:52 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-17.mp3
ffmpeg -y -ss 9:00:04 -t 0:49:26 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-18.mp3
ffmpeg -y -ss 9:49:30 -t 0:36:30 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-19.mp3
ffmpeg -y -ss 10:26:00 -t 0:08:41 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-20.mp3
ffmpeg -y -ss 10:34:41 -t 0:05:30 -i Zodiac.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Zodiac-Chapter-21.mp3
mv Zodiac.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv Zodiac-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Robert Graysmith' 'Zodiac'; cd ..; done
