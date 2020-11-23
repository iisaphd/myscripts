ffmpeg -y -ss 0:00:00 -t 0:26:25 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-01.mp3
ffmpeg -y -ss 0:26:25 -t 0:19:13 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-02.mp3
ffmpeg -y -ss 0:45:38 -t 0:22:13 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-03.mp3
ffmpeg -y -ss 1:07:51 -t 0:18:56 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-04.mp3
ffmpeg -y -ss 1:26:47 -t 0:15:13 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-05.mp3
ffmpeg -y -ss 1:42:00 -t 0:06:44 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-06.mp3
ffmpeg -y -ss 1:48:44 -t 0:19:30 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-07.mp3
ffmpeg -y -ss 2:08:14 -t 0:08:03 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-08.mp3
ffmpeg -y -ss 2:16:17 -t 0:09:10 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-09.mp3
ffmpeg -y -ss 2:25:27 -t 0:11:10 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-10.mp3
ffmpeg -y -ss 2:36:37 -t 0:08:00 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-11.mp3
ffmpeg -y -ss 2:44:37 -t 0:09:11 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-12.mp3
ffmpeg -y -ss 2:53:48 -t 0:05:35 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-13.mp3
ffmpeg -y -ss 2:59:23 -t 0:04:28 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-14.mp3
ffmpeg -y -ss 3:03:51 -t 0:01:39 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-15.mp3
ffmpeg -y -ss 3:05:30 -t 0:18:14 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-16.mp3
ffmpeg -y -ss 3:23:44 -t 0:14:20 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-17.mp3
ffmpeg -y -ss 3:38:04 -t 0:26:37 -i SerialUncut.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SerialUncut-Chapter-18.mp3
mv SerialUncut.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv SerialUncut-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Jack Kilborn' 'SerialUncut'; cd ..; done
