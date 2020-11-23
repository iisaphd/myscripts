ffmpeg -y -ss 0:00:00 -t 0:13:29 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-01.mp3
ffmpeg -y -ss 0:13:29 -t 0:24:12 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-02.mp3
ffmpeg -y -ss 0:37:41 -t 0:15:48 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-03.mp3
ffmpeg -y -ss 0:53:29 -t 0:34:02 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-04.mp3
ffmpeg -y -ss 1:27:31 -t 0:32:36 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-05.mp3
ffmpeg -y -ss 2:00:07 -t 0:32:09 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-06.mp3
ffmpeg -y -ss 2:32:16 -t 0:39:24 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-07.mp3
ffmpeg -y -ss 3:11:40 -t 0:48:41 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-08.mp3
ffmpeg -y -ss 4:00:21 -t 0:09:07 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-09.mp3
ffmpeg -y -ss 4:09:28 -t 0:20:36 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-10.mp3
ffmpeg -y -ss 4:30:04 -t 0:32:24 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-11.mp3
ffmpeg -y -ss 5:02:28 -t 0:15:17 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-12.mp3
ffmpeg -y -ss 5:17:45 -t 0:16:17 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-13.mp3
ffmpeg -y -ss 5:34:02 -t 0:26:19 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-14.mp3
ffmpeg -y -ss 6:00:21 -t 0:30:56 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-15.mp3
ffmpeg -y -ss 6:31:17 -t 0:17:22 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-16.mp3
ffmpeg -y -ss 6:48:39 -t 0:23:36 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-17.mp3
ffmpeg -y -ss 7:12:15 -t 0:08:41 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-18.mp3
ffmpeg -y -ss 7:20:56 -t 0:01:53 -i HowtheUniverseGotItsSpots.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowtheUniverseGotItsSpots-Chapter-19.mp3
mv HowtheUniverseGotItsSpots.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv HowtheUniverseGotItsSpots-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Science' 'HowtheUniverseGotItsSpots'; cd ..; done
