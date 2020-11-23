ffmpeg -y -ss 0:00:00 -t 2:12:35 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-01.mp3
ffmpeg -y -ss 2:12:35 -t 1:10:02 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-02.mp3
ffmpeg -y -ss 3:22:37 -t 1:13:01 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-03.mp3
ffmpeg -y -ss 4:35:39 -t 1:23:21 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-04.mp3
ffmpeg -y -ss 5:59:00 -t 0:56:11 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-05.mp3
ffmpeg -y -ss 6:55:12 -t 0:58:02 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-06.mp3
ffmpeg -y -ss 7:53:14 -t 0:40:56 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-07.mp3
ffmpeg -y -ss 8:34:11 -t 0:44:34 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-08.mp3
ffmpeg -y -ss 9:18:45 -t 0:50:29 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-09.mp3
ffmpeg -y -ss 10:09:15 -t 0:33:49 -i KingLearAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingLearAppreciated-chapter-10.mp3
mv KingLearAppreciated.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv KingLearAppreciated-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'William Shakespeare' 'KingLearAppreciated'; cd ..; done
for i in `seq 10 10` ; do mkdir $i; mv KingLearAppreciated-chapter-$i* $i/; done
for i in `seq 10 10` ; do cd $i; dotracks.sh 'William Shakespeare' 'KingLearAppreciated'; cd ..; done
