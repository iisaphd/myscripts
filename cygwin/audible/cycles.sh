ffmpeg -y -ss 0:00:00 -t 0:16:33 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-00.mp3
ffmpeg -y -ss 0:16:33 -t 0:11:40 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-01.mp3
ffmpeg -y -ss 0:28:13 -t 0:19:20 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-02.mp3
ffmpeg -y -ss 0:47:33 -t 0:21:01 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-03.mp3
ffmpeg -y -ss 1:08:34 -t 0:18:13 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-04.mp3
ffmpeg -y -ss 1:26:47 -t 0:11:54 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-05.mp3
ffmpeg -y -ss 1:38:41 -t 0:15:44 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-06.mp3
ffmpeg -y -ss 1:54:25 -t 0:17:01 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-07.mp3
ffmpeg -y -ss 2:11:26 -t 0:26:16 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-08.mp3
ffmpeg -y -ss 2:37:42 -t 0:27:48 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-09.mp3
ffmpeg -y -ss 3:05:30 -t 0:48:21 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-10.mp3
ffmpeg -y -ss 3:53:51 -t 0:27:25 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-11.mp3
ffmpeg -y -ss 4:21:16 -t 0:23:55 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-12.mp3
ffmpeg -y -ss 4:45:11 -t 0:35:38 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-13.mp3
ffmpeg -y -ss 5:20:49 -t 0:20:26 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-14.mp3
ffmpeg -y -ss 5:41:15 -t 0:35:13 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-15.mp3
ffmpeg -y -ss 6:16:28 -t 0:34:16 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-16.mp3
ffmpeg -y -ss 6:50:44 -t 0:30:50 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-17.mp3
ffmpeg -y -ss 7:21:34 -t 0:01:17 -i CyclesofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CyclesofTime-Chapter-18.mp3
mv CyclesofTime.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv CyclesofTime-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'CyclesofTime'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv CyclesofTime-Chapter-$i* $i/; done
for i in `seq 10 18` ; do cd $i; dotracks.sh 'Science' 'CyclesofTime'; cd ..; done
