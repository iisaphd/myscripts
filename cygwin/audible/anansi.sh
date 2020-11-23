ffmpeg -y -ss 0:00:00 -t 1:16:09 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-01.mp3
ffmpeg -y -ss 1:16:09 -t 1:17:00 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-02.mp3
ffmpeg -y -ss 2:33:09 -t 1:13:24 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-03.mp3
ffmpeg -y -ss 3:46:33 -t 1:16:40 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-04.mp3
ffmpeg -y -ss 5:03:13 -t 1:14:56 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-05.mp3
ffmpeg -y -ss 6:18:09 -t 1:16:46 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-06.mp3
ffmpeg -y -ss 7:34:55 -t 1:14:25 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-07.mp3
ffmpeg -y -ss 8:49:20 -t 1:16:26 -i AnansiBoys.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AnansiBoys-Chapter-08.mp3
mv AnansiBoys.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 8` ; do mkdir $i; mv AnansiBoys-Chapter-$i* $i/; done
for i in `seq 1 8` ; do cd $i; dotracks.sh 'Neil Gaiman' 'AnansiBoys'; cd ..; done
