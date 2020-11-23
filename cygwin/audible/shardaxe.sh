ffmpeg -y -ss 0:00:00 -t 0:19:36 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-01.mp3
ffmpeg -y -ss 0:19:36 -t 0:32:31 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-02.mp3
ffmpeg -y -ss 0:52:07 -t 0:24:05 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-03.mp3
ffmpeg -y -ss 1:16:12 -t 0:25:40 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-04.mp3
ffmpeg -y -ss 1:41:52 -t 0:24:21 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-05.mp3
ffmpeg -y -ss 2:06:13 -t 0:38:10 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-06.mp3
ffmpeg -y -ss 2:44:23 -t 0:27:57 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-07.mp3
ffmpeg -y -ss 3:12:20 -t 0:38:54 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-08.mp3
ffmpeg -y -ss 3:51:14 -t 0:21:38 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-09.mp3
ffmpeg -y -ss 4:12:52 -t 0:23:13 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-10.mp3
ffmpeg -y -ss 4:36:05 -t 0:26:00 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-11.mp3
ffmpeg -y -ss 5:02:05 -t 0:33:40 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-12.mp3
ffmpeg -y -ss 5:35:45 -t 0:37:39 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-13.mp3
ffmpeg -y -ss 6:13:24 -t 0:27:31 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-14.mp3
ffmpeg -y -ss 6:40:55 -t 0:40:15 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-15.mp3
ffmpeg -y -ss 7:21:10 -t 0:36:47 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-16.mp3
ffmpeg -y -ss 7:57:57 -t 0:32:58 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-17.mp3
ffmpeg -y -ss 8:30:55 -t 0:27:46 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-18.mp3
ffmpeg -y -ss 8:58:41 -t 0:15:04 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-19.mp3
ffmpeg -y -ss 9:13:45 -t 0:18:38 -i ShardAxe.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ShardAxe-chapter-20.mp3
mv ShardAxe.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv ShardAxe-chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Marsheila Rockwell' 'ShardAxe'; cd ..; done
