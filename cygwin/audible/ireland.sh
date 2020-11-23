ffmpeg -y -ss 0:00:00 -t 1:15:03 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-01.mp3
ffmpeg -y -ss 1:15:03 -t 1:18:37 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-02.mp3
ffmpeg -y -ss 2:33:40 -t 1:03:21 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-03.mp3
ffmpeg -y -ss 3:37:01 -t 1:06:33 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-04.mp3
ffmpeg -y -ss 4:43:34 -t 1:13:20 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-05.mp3
ffmpeg -y -ss 5:56:54 -t 1:11:32 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-06.mp3
ffmpeg -y -ss 7:08:26 -t 1:04:40 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-07.mp3
ffmpeg -y -ss 8:13:06 -t 1:09:42 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-08.mp3
ffmpeg -y -ss 9:22:48 -t 1:12:38 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-09.mp3
ffmpeg -y -ss 10:35:26 -t 1:10:54 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-10.mp3
ffmpeg -y -ss 11:46:20 -t 1:18:22 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-11.mp3
ffmpeg -y -ss 13:04:42 -t 1:18:52 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-12.mp3
ffmpeg -y -ss 14:23:34 -t 1:18:57 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-13.mp3
ffmpeg -y -ss 15:42:31 -t 1:08:41 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-14.mp3
ffmpeg -y -ss 16:51:12 -t 1:18:48 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-15.mp3
ffmpeg -y -ss 18:10:00 -t 1:18:50 -i Ireland.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Ireland-Chapter-16.mp3
mv Ireland.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv Ireland-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Frank Delaney' 'Ireland'; cd ..; done
for i in `seq 10 16` ; do mkdir $i; mv Ireland-Chapter-$i* $i/; done
for i in `seq 10 16` ; do cd $i; dotracks.sh 'Frank Delaney' 'Ireland'; cd ..; done
