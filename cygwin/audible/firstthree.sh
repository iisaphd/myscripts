ffmpeg -y -ss 0:00:00 -t 0:21:48 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-1.mp3
ffmpeg -y -ss 0:21:48 -t 0:55:37 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-2.mp3
ffmpeg -y -ss 1:17:25 -t 1:01:41 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-3.mp3
ffmpeg -y -ss 2:19:06 -t 0:46:40 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-4.mp3
ffmpeg -y -ss 3:05:46 -t 0:39:03 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-5.mp3
ffmpeg -y -ss 3:44:49 -t 0:20:34 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-6.mp3
ffmpeg -y -ss 4:05:23 -t 0:31:21 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-7.mp3
ffmpeg -y -ss 4:36:44 -t 0:09:45 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-8.mp3
ffmpeg -y -ss 4:46:29 -t 0:43:48 -i FirstThreeMinutes.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FirstThreeMinutes-Chapter-9.mp3
mv FirstThreeMinutes.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv FirstThreeMinutes-Chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Science' 'FirstThreeMinutes'; cd ..; done
