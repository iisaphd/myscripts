ffmpeg -y -ss 0:00:00 -t 0:08:24 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-01.mp3
ffmpeg -y -ss 0:08:24 -t 0:44:45 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-02.mp3
ffmpeg -y -ss 0:53:09 -t 0:32:07 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-03.mp3
ffmpeg -y -ss 1:25:16 -t 0:20:24 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-04.mp3
ffmpeg -y -ss 1:45:40 -t 0:47:22 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-05.mp3
ffmpeg -y -ss 2:33:02 -t 0:35:08 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-06.mp3
ffmpeg -y -ss 3:08:10 -t 0:48:41 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-07.mp3
ffmpeg -y -ss 3:56:51 -t 0:28:24 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-08.mp3
ffmpeg -y -ss 4:25:15 -t 0:55:06 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-09.mp3
ffmpeg -y -ss 5:20:21 -t 0:53:56 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-10.mp3
ffmpeg -y -ss 6:14:17 -t 0:15:45 -i LatheofHeaven.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LatheofHeaven-chapter-11.mp3













mv LatheofHeaven.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv LatheofHeaven-chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Ursula Le Guin' 'LatheofHeaven'; cd ..; done
