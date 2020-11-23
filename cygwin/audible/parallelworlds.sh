ffmpeg -y -ss 0:00:00 -t 0:06:22 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-00.mp3
ffmpeg -y -ss 0:06:22 -t 0:47:10 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-01.mp3
ffmpeg -y -ss 0:53:32 -t 0:53:23 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-02.mp3
ffmpeg -y -ss 1:46:55 -t 1:16:59 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-03.mp3
ffmpeg -y -ss 3:03:54 -t 1:22:42 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-04.mp3
ffmpeg -y -ss 4:26:36 -t 1:26:05 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-05.mp3
ffmpeg -y -ss 5:52:41 -t 1:30:53 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-06.mp3
ffmpeg -y -ss 7:23:34 -t 2:34:41 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-07.mp3
ffmpeg -y -ss 9:58:15 -t 0:37:50 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-08.mp3
ffmpeg -y -ss 10:36:05 -t 1:12:19 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-09.mp3
ffmpeg -y -ss 11:48:24 -t 0:43:00 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-10.mp3
ffmpeg -y -ss 12:31:24 -t 1:36:35 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-11.mp3
ffmpeg -y -ss 14:07:59 -t 0:47:53 -i ParallelWorlds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ParallelWorlds-chapter-12.mp3
mv ParallelWorlds.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv ParallelWorlds-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'ParallelWorlds'; cd ..; done
for i in `seq 10 12` ; do mkdir $i; mv ParallelWorlds-chapter-$i* $i/; done
for i in `seq 10 12` ; do cd $i; dotracks.sh 'Science' 'ParallelWorlds'; cd ..; done
