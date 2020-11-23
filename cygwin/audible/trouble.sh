ffmpeg -y -ss 0:00:00 -t 0:43:58 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-00.mp3
ffmpeg -y -ss 0:43:58 -t 0:36:58 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-01.mp3
ffmpeg -y -ss 1:20:56 -t 0:48:16 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-02.mp3
ffmpeg -y -ss 2:09:12 -t 0:37:30 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-03.mp3
ffmpeg -y -ss 2:46:42 -t 0:31:32 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-04.mp3
ffmpeg -y -ss 3:18:14 -t 0:34:20 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-05.mp3
ffmpeg -y -ss 3:52:34 -t 0:48:43 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-06.mp3
ffmpeg -y -ss 4:41:17 -t 0:30:48 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-07.mp3
ffmpeg -y -ss 5:12:05 -t 0:36:00 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-08.mp3
ffmpeg -y -ss 5:48:05 -t 0:48:14 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-09.mp3
ffmpeg -y -ss 6:36:19 -t 0:28:57 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-10.mp3
ffmpeg -y -ss 7:05:16 -t 0:39:53 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-11.mp3
ffmpeg -y -ss 7:45:09 -t 0:57:54 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-12.mp3
ffmpeg -y -ss 8:43:03 -t 0:50:06 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-13.mp3
ffmpeg -y -ss 9:33:09 -t 0:36:45 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-14.mp3
ffmpeg -y -ss 10:09:54 -t 0:48:37 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-15.mp3
ffmpeg -y -ss 10:58:31 -t 1:09:01 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-16.mp3
ffmpeg -y -ss 12:07:32 -t 0:46:26 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-17.mp3
ffmpeg -y -ss 12:53:58 -t 0:58:33 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-18.mp3
ffmpeg -y -ss 13:52:31 -t 0:40:32 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-19.mp3
ffmpeg -y -ss 14:33:03 -t 0:16:32 -i TroublewithPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TroublewithPhysics-Chapter-20.mp3



mv TroublewithPhysics.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv TroublewithPhysics-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'TroublewithPhysics'; cd ..; done
for i in `seq 10 20` ; do mkdir $i; mv TroublewithPhysics-Chapter-$i* $i/; done
for i in `seq 10 20` ; do cd $i; dotracks.sh 'Science' 'TroublewithPhysics'; cd ..; done
