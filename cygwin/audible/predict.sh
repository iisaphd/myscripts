ffmpeg -y -ss 0:00:00 -t 0:20:50 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-00.mp3
ffmpeg -y -ss 0:20:50 -t 0:33:14 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-01.mp3
ffmpeg -y -ss 0:54:04 -t 0:47:05 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-02.mp3
ffmpeg -y -ss 1:41:09 -t 0:29:09 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-03.mp3
ffmpeg -y -ss 2:10:18 -t 0:38:54 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-04.mp3
ffmpeg -y -ss 2:49:12 -t 0:28:17 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-05.mp3
ffmpeg -y -ss 3:17:29 -t 0:31:26 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-06.mp3
ffmpeg -y -ss 3:48:55 -t 0:21:36 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-07.mp3
ffmpeg -y -ss 4:10:31 -t 0:26:29 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-08.mp3
ffmpeg -y -ss 4:37:00 -t 0:33:12 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-09.mp3
ffmpeg -y -ss 5:10:12 -t 0:41:27 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-10.mp3
ffmpeg -y -ss 5:51:39 -t 0:39:31 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-11.mp3
ffmpeg -y -ss 6:31:10 -t 0:25:16 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-12.mp3
ffmpeg -y -ss 6:56:26 -t 0:24:43 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-13.mp3
ffmpeg -y -ss 7:21:09 -t 0:01:41 -i PredicablyIrrational.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PredicablyIrrational-Chapter-14.mp3
mv PredicablyIrrational.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv PredicablyIrrational-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Science' 'PredicablyIrrational'; cd ..; done
