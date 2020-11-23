ffmpeg -y -ss 0:00:00 -t 0:48:39 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-01.mp3
ffmpeg -y -ss 0:48:39 -t 0:51:09 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-02.mp3
ffmpeg -y -ss 1:39:48 -t 1:07:19 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-03.mp3
ffmpeg -y -ss 2:47:07 -t 1:02:26 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-04.mp3
ffmpeg -y -ss 3:49:33 -t 1:32:47 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-05.mp3
ffmpeg -y -ss 5:22:20 -t 1:00:27 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-06.mp3
ffmpeg -y -ss 6:22:47 -t 0:41:54 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-07.mp3
ffmpeg -y -ss 7:04:41 -t 0:54:32 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-08.mp3
ffmpeg -y -ss 7:59:13 -t 1:02:14 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-09.mp3
ffmpeg -y -ss 9:01:27 -t 1:09:41 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-10.mp3
ffmpeg -y -ss 10:11:08 -t 0:51:47 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-11.mp3
ffmpeg -y -ss 11:02:55 -t 0:56:29 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-12.mp3
ffmpeg -y -ss 11:59:24 -t 0:51:32 -i SatansCircus.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SatansCircus-Chapter-13.mp3
mv SatansCircus.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv SatansCircus-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'History' 'SatansCircus'; cd ..; done
for i in `seq 10 13` ; do mkdir $i; mv SatansCircus-Chapter-$i* $i/; done
for i in `seq 10 13` ; do cd $i; dotracks.sh 'History' 'SatansCircus'; cd ..; done
