ffmpeg -y -ss 0:00:00 -t 1:13:02 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-01.mp3
ffmpeg -y -ss 1:13:02 -t 1:15:26 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-02.mp3
ffmpeg -y -ss 2:28:28 -t 1:12:45 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-03.mp3
ffmpeg -y -ss 3:41:13 -t 1:13:20 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-04.mp3
ffmpeg -y -ss 4:54:33 -t 1:19:28 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-05.mp3
ffmpeg -y -ss 6:14:01 -t 1:15:39 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-06.mp3
ffmpeg -y -ss 7:29:40 -t 1:12:46 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-07.mp3
ffmpeg -y -ss 8:42:26 -t 1:17:43 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-08.mp3
ffmpeg -y -ss 10:00:09 -t 1:06:00 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-09.mp3
ffmpeg -y -ss 11:06:09 -t 0:49:50 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-10.mp3
ffmpeg -y -ss 11:55:59 -t 1:04:29 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-11.mp3
ffmpeg -y -ss 13:00:28 -t 1:15:48 -i SonofaWitch.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SonofaWitch-Chapter-12.mp3










mv SonofaWitch.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv SonofaWitch-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Gregory Maguire' 'SonofaWitch'; cd ..; done
for i in `seq 10 12` ; do mkdir $i; mv SonofaWitch-Chapter-$i* $i/; done
for i in `seq 10 12` ; do cd $i; dotracks.sh 'Gregory Maguire' 'SonofaWitch'; cd ..; done
