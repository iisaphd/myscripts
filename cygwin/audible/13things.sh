ffmpeg -y -ss 0:00:00 -t 0:16:20 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-00.mp3
ffmpeg -y -ss 0:16:20 -t 1:12:48 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-01.mp3
ffmpeg -y -ss 1:29:08 -t 0:23:36 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-02.mp3
ffmpeg -y -ss 1:52:44 -t 0:28:54 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-03.mp3
ffmpeg -y -ss 2:21:38 -t 0:28:58 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-04.mp3
ffmpeg -y -ss 2:50:36 -t 0:36:25 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-05.mp3
ffmpeg -y -ss 3:27:01 -t 0:35:33 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-06.mp3
ffmpeg -y -ss 4:02:34 -t 0:32:40 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-07.mp3
ffmpeg -y -ss 4:35:14 -t 0:32:56 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-08.mp3
ffmpeg -y -ss 5:08:10 -t 0:35:10 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-09.mp3
ffmpeg -y -ss 5:43:20 -t 0:38:29 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-10.mp3
ffmpeg -y -ss 6:21:49 -t 0:32:34 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-11.mp3
ffmpeg -y -ss 6:54:23 -t 0:43:59 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-12.mp3
ffmpeg -y -ss 7:38:22 -t 0:58:13 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-13.mp3
ffmpeg -y -ss 8:36:35 -t 0:22:03 -i 13ThingsThatDontMakeSense.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13ThingsThatDontMakeSense-Chapter-14.mp3
mv 13ThingsThatDontMakeSense.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv 13ThingsThatDontMakeSense-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' '13ThingsThatDontMakeSense'; cd ..; done
for i in `seq 10 14` ; do mkdir $i; mv 13ThingsThatDontMakeSense-Chapter-$i* $i/; done
for i in `seq 10 14` ; do cd $i; dotracks.sh 'Science' '13ThingsThatDontMakeSense'; cd ..; done
