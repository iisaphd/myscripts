ffmpeg -y -ss 0:00:00 -t 1:16:27 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-01.mp3
ffmpeg -y -ss 1:16:27 -t 0:35:26 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-02.mp3
ffmpeg -y -ss 1:51:53 -t 0:50:34 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-03.mp3
ffmpeg -y -ss 2:42:28 -t 0:51:14 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-04.mp3
ffmpeg -y -ss 3:33:42 -t 0:42:07 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-05.mp3
ffmpeg -y -ss 4:15:50 -t 0:42:13 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-06.mp3
ffmpeg -y -ss 4:58:03 -t 0:23:01 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-07.mp3
ffmpeg -y -ss 5:21:05 -t 0:31:26 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-08.mp3
ffmpeg -y -ss 5:52:31 -t 0:33:55 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-09.mp3
ffmpeg -y -ss 6:26:27 -t 0:30:09 -i MacbethAppreciated.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  MacbethAppreciated-chapter-10.mp3
mv MacbethAppreciated.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv MacbethAppreciated-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'William Shakespeare' 'MacbethAppreciated'; cd ..; done
for i in `seq 10 10` ; do mkdir $i; mv MacbethAppreciated-chapter-$i* $i/; done
for i in `seq 10 10` ; do cd $i; dotracks.sh 'William Shakespeare' 'MacbethAppreciated'; cd ..; done
