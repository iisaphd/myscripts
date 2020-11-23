ffmpeg -y -ss 0:00:00 -t 1:33:13 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-00.mp3
ffmpeg -y -ss 1:33:13 -t 1:04:00 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-01.mp3
ffmpeg -y -ss 2:37:13 -t 1:09:35 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-02.mp3
ffmpeg -y -ss 3:46:49 -t 1:03:56 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-03.mp3
ffmpeg -y -ss 4:50:45 -t 0:55:06 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-04.mp3
ffmpeg -y -ss 5:45:52 -t 1:15:47 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-05.mp3
ffmpeg -y -ss 7:01:39 -t 1:21:03 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-06.mp3
ffmpeg -y -ss 8:22:43 -t 1:09:02 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-07.mp3
ffmpeg -y -ss 9:31:45 -t 1:01:19 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-08.mp3
ffmpeg -y -ss 10:33:05 -t 1:05:40 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-09.mp3
ffmpeg -y -ss 11:38:45 -t 1:20:02 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-10.mp3
ffmpeg -y -ss 12:58:48 -t 1:19:07 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-11.mp3
ffmpeg -y -ss 14:17:55 -t 1:19:05 -i Aeneid.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Aeneid-chapter-12.mp3
mv Aeneid.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv Aeneid-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Virgil' 'Aeneid'; cd ..; done
for i in `seq 10 12` ; do mkdir $i; mv Aeneid-chapter-$i* $i/; done
for i in `seq 10 12` ; do cd $i; dotracks.sh 'Virgil' 'Aeneid'; cd ..; done
