ffmpeg -y -ss 0:00:00 -t 1:07:22 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-01.mp3
ffmpeg -y -ss 1:07:22 -t 1:15:43 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-02.mp3
ffmpeg -y -ss 2:23:05 -t 1:13:39 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-03.mp3
ffmpeg -y -ss 3:36:44 -t 1:13:40 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-04.mp3
ffmpeg -y -ss 4:50:24 -t 1:10:37 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-05.mp3
ffmpeg -y -ss 6:01:01 -t 1:15:46 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-06.mp3
ffmpeg -y -ss 7:16:47 -t 1:12:58 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-07.mp3
ffmpeg -y -ss 8:29:45 -t 1:16:48 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-08.mp3
ffmpeg -y -ss 9:46:33 -t 1:14:10 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-09.mp3
ffmpeg -y -ss 11:00:43 -t 1:15:04 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-10.mp3
ffmpeg -y -ss 12:15:47 -t 1:16:00 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-11.mp3
ffmpeg -y -ss 13:31:47 -t 1:12:38 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-12.mp3
ffmpeg -y -ss 14:44:25 -t 1:05:44 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-13.mp3
ffmpeg -y -ss 15:50:09 -t 0:59:51 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-14.mp3
ffmpeg -y -ss 16:50:00 -t 1:08:52 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-15.mp3
ffmpeg -y -ss 17:58:52 -t 0:48:40 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-16.mp3
ffmpeg -y -ss 18:47:32 -t 1:14:23 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-17.mp3
ffmpeg -y -ss 20:01:55 -t 1:00:09 -i Dune.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Dune-Chapter-18.mp3



mv Dune.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv Dune-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Frank Herbert' 'Dune'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv Dune-Chapter-$i* $i/; done
for i in `seq 10 18` ; do cd $i; dotracks.sh 'Frank Herbert' 'Dune'; cd ..; done
