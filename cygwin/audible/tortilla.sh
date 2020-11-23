ffmpeg -y -ss 0:00:00 -t 0:22:27 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-00.mp3
ffmpeg -y -ss 0:22:27 -t 0:11:28 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-01.mp3
ffmpeg -y -ss 0:33:55 -t 0:14:28 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-02.mp3
ffmpeg -y -ss 0:48:23 -t 0:24:43 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-03.mp3
ffmpeg -y -ss 1:13:06 -t 0:21:36 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-04.mp3
ffmpeg -y -ss 1:34:42 -t 0:12:54 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-05.mp3
ffmpeg -y -ss 1:47:36 -t 0:39:13 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-06.mp3
ffmpeg -y -ss 2:26:49 -t 0:46:30 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-07.mp3
ffmpeg -y -ss 3:13:19 -t 0:26:55 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-08.mp3
ffmpeg -y -ss 3:40:14 -t 0:19:57 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-09.mp3
ffmpeg -y -ss 4:00:11 -t 0:12:14 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-10.mp3
ffmpeg -y -ss 4:12:25 -t 0:35:40 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-11.mp3
ffmpeg -y -ss 4:48:05 -t 0:21:38 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-12.mp3
ffmpeg -y -ss 5:09:43 -t 0:32:22 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-13.mp3
ffmpeg -y -ss 5:42:05 -t 0:33:36 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-14.mp3
ffmpeg -y -ss 6:15:41 -t 0:29:31 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-15.mp3
ffmpeg -y -ss 6:45:12 -t 0:18:35 -i TortillaFlat.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TortillaFlat-Chapter-16.mp3
mv TortillaFlat.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv TortillaFlat-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Neal Stephenson' 'TortillaFlat'; cd ..; done
