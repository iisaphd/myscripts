ffmpeg -y -ss 0:00:00 -t 0:20:40 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-00.mp3
ffmpeg -y -ss 0:20:40 -t 0:56:32 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-01.mp3
ffmpeg -y -ss 1:17:12 -t 1:05:40 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-02.mp3
ffmpeg -y -ss 2:22:52 -t 1:05:03 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-03.mp3
ffmpeg -y -ss 3:27:55 -t 1:10:20 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-04.mp3
ffmpeg -y -ss 4:38:15 -t 1:07:08 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-05.mp3
ffmpeg -y -ss 5:45:23 -t 1:25:12 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-06.mp3
ffmpeg -y -ss 7:10:35 -t 1:06:23 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-07.mp3
ffmpeg -y -ss 8:16:58 -t 1:12:28 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-08.mp3
ffmpeg -y -ss 9:29:26 -t 1:10:10 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-09.mp3
ffmpeg -y -ss 10:39:36 -t 1:05:18 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-10.mp3
ffmpeg -y -ss 11:44:54 -t 0:21:52 -i EdgeofPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  EdgeofPhysics-Chapter-11.mp3
mv EdgeofPhysics.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv EdgeofPhysics-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'EdgeofPhysics'; cd ..; done
for i in `seq 10 11` ; do mkdir $i; mv EdgeofPhysics-Chapter-$i* $i/; done
for i in `seq 10 11` ; do cd $i; dotracks.sh 'Science' 'EdgeofPhysics'; cd ..; done
