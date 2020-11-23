ffmpeg -y -ss 0:00:00 -t 0:09:33 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-00.mp3
ffmpeg -y -ss 0:09:33 -t 0:41:46 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-01.mp3
ffmpeg -y -ss 0:51:19 -t 0:52:14 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-02.mp3
ffmpeg -y -ss 1:43:33 -t 0:25:51 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-03.mp3
ffmpeg -y -ss 2:09:24 -t 1:15:44 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-04.mp3
ffmpeg -y -ss 3:25:08 -t 0:56:53 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-05.mp3
ffmpeg -y -ss 4:22:01 -t 0:31:07 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-06.mp3
ffmpeg -y -ss 4:53:08 -t 0:32:37 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-07.mp3
ffmpeg -y -ss 5:25:45 -t 0:34:58 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-08.mp3
ffmpeg -y -ss 6:00:43 -t 0:33:07 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-09.mp3
ffmpeg -y -ss 6:33:50 -t 1:00:27 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-10.mp3
ffmpeg -y -ss 7:34:17 -t 0:30:22 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-11.mp3
ffmpeg -y -ss 8:04:39 -t 0:27:24 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-12.mp3
ffmpeg -y -ss 8:32:03 -t 0:29:34 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-13.mp3
ffmpeg -y -ss 9:01:37 -t 0:31:01 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-14.mp3
ffmpeg -y -ss 9:32:38 -t 0:35:39 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-15.mp3
ffmpeg -y -ss 10:08:17 -t 0:35:26 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-16.mp3
ffmpeg -y -ss 10:43:43 -t 0:33:29 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-17.mp3
ffmpeg -y -ss 11:17:12 -t 0:02:33 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-18.mp3
ffmpeg -y -ss 11:19:45 -t 0:29:43 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-19.mp3
ffmpeg -y -ss 11:49:28 -t 0:41:33 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-20.mp3
ffmpeg -y -ss 12:31:01 -t 1:17:35 -i Neverwhere.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Neverwhere-Chapter-21.mp3
mv Neverwhere.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv Neverwhere-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Neil Gaiman' 'Neverwhere'; cd ..; done
