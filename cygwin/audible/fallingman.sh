ffmpeg -y -ss 0:00:00 -t 0:07:19 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-01.mp3
ffmpeg -y -ss 0:07:19 -t 0:11:06 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-02.mp3
ffmpeg -y -ss 0:18:25 -t 0:23:47 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-03.mp3
ffmpeg -y -ss 0:42:12 -t 0:38:12 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-04.mp3
ffmpeg -y -ss 1:20:24 -t 0:58:22 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-05.mp3
ffmpeg -y -ss 2:18:46 -t 0:42:53 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-06.mp3
ffmpeg -y -ss 3:01:39 -t 0:46:54 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-07.mp3
ffmpeg -y -ss 3:48:33 -t 0:31:11 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-08.mp3
ffmpeg -y -ss 4:19:44 -t 0:46:08 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-09.mp3
ffmpeg -y -ss 5:05:52 -t 0:28:53 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-10.mp3
ffmpeg -y -ss 5:34:45 -t 0:19:06 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-11.mp3
ffmpeg -y -ss 5:53:51 -t 0:16:48 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-12.mp3
ffmpeg -y -ss 6:10:39 -t 0:14:04 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-13.mp3
ffmpeg -y -ss 6:24:43 -t 0:48:03 -i FallingMan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FallingMan-Chapter-14.mp3
mv FallingMan.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv FallingMan-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Don Delillo' 'FallingMan'; cd ..; done
