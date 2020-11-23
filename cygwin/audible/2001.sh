ffmpeg -y -ss 0:00:00 -t 1:03:30 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-01.mp3
ffmpeg -y -ss 1:03:30 -t 0:08:49 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-02.mp3
ffmpeg -y -ss 1:12:19 -t 0:40:34 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-03.mp3
ffmpeg -y -ss 1:52:53 -t 0:45:09 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-04.mp3
ffmpeg -y -ss 2:38:02 -t 0:49:59 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-05.mp3
ffmpeg -y -ss 3:28:01 -t 0:05:32 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-06.mp3
ffmpeg -y -ss 3:33:33 -t 0:37:25 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-07.mp3
ffmpeg -y -ss 4:10:58 -t 0:41:22 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-08.mp3
ffmpeg -y -ss 4:52:20 -t 0:07:49 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-09.mp3
ffmpeg -y -ss 5:00:09 -t 0:29:32 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-10.mp3
ffmpeg -y -ss 5:29:41 -t 0:18:29 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-11.mp3
ffmpeg -y -ss 5:48:10 -t 0:00:34 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-12.mp3
ffmpeg -y -ss 5:48:44 -t 0:41:12 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-13.mp3
ffmpeg -y -ss 6:29:56 -t 0:12:50 -i 2001ASpaceOdyssey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  2001ASpaceOdyssey-chapter-14.mp3
mv 2001ASpaceOdyssey.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv 2001ASpaceOdyssey-chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Arthur C Clarke' '2001ASpaceOdyssey'; cd ..; done
