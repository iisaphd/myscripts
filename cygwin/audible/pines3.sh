ffmpeg -y -ss 0:00:00 -t 0:18:33 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-01.mp3
ffmpeg -y -ss 0:18:33 -t 0:28:14 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-02.mp3
ffmpeg -y -ss 0:46:47 -t 0:38:33 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-03.mp3
ffmpeg -y -ss 1:25:20 -t 0:31:23 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-04.mp3
ffmpeg -y -ss 1:56:43 -t 0:36:47 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-05.mp3
ffmpeg -y -ss 2:33:30 -t 0:58:05 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-06.mp3
ffmpeg -y -ss 3:31:35 -t 0:37:39 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-07.mp3
ffmpeg -y -ss 4:09:14 -t 0:52:47 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-08.mp3
ffmpeg -y -ss 5:02:01 -t 0:33:44 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-09.mp3
ffmpeg -y -ss 5:35:45 -t 1:02:01 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-10.mp3
ffmpeg -y -ss 6:37:46 -t 0:17:34 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-11.mp3
ffmpeg -y -ss 6:55:20 -t 0:01:37 -i LastTown.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LastTown-Chapter-12.mp3
mv LastTown.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; done
for i in `seq 0 1` ; do mkdir $i; mv LastTown-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Blake Crouch' 'LastTown'; cd ..; done
