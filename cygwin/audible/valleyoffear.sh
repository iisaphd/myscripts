ffmpeg -y -ss 0:00:00 -t 0:20:37 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-01.mp3
ffmpeg -y -ss 0:20:37 -t 0:15:17 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-02.mp3
ffmpeg -y -ss 0:35:54 -t 0:18:22 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-03.mp3
ffmpeg -y -ss 0:54:16 -t 0:21:09 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-04.mp3
ffmpeg -y -ss 1:15:25 -t 0:22:35 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-05.mp3
ffmpeg -y -ss 1:38:00 -t 0:24:17 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-06.mp3
ffmpeg -y -ss 2:02:17 -t 0:30:01 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-07.mp3
ffmpeg -y -ss 2:32:18 -t 0:16:46 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-08.mp3
ffmpeg -y -ss 2:49:04 -t 0:30:45 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-09.mp3
ffmpeg -y -ss 3:19:49 -t 0:31:16 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-10.mp3
ffmpeg -y -ss 3:51:05 -t 0:19:36 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-11.mp3
ffmpeg -y -ss 4:10:41 -t 0:25:12 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-12.mp3
ffmpeg -y -ss 4:35:53 -t 0:18:12 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-13.mp3
ffmpeg -y -ss 4:54:05 -t 0:23:11 -i ValleyofFear.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ValleyofFear-Chapter-14.mp3
mv ValleyofFear.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv ValleyofFear-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Arthur Conan Doyle' 'ValleyofFear'; cd ..; done
