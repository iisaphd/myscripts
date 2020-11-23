ffmpeg -y -ss 6:03:10 -t 0:15:56 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-23.mp3
ffmpeg -y -ss 6:19:06 -t 0:13:21 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-24.mp3
ffmpeg -y -ss 6:32:27 -t 0:13:25 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-25.mp3
ffmpeg -y -ss 6:45:52 -t 0:15:46 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-26.mp3
ffmpeg -y -ss 7:01:38 -t 0:14:13 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-27.mp3
ffmpeg -y -ss 7:15:51 -t 0:15:10 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-28.mp3
ffmpeg -y -ss 7:31:01 -t 0:19:20 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-29.mp3
ffmpeg -y -ss 7:50:21 -t 0:17:32 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-30.mp3
ffmpeg -y -ss 8:07:53 -t 0:15:03 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-31.mp3
ffmpeg -y -ss 8:22:56 -t 0:14:55 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-32.mp3
ffmpeg -y -ss 8:37:51 -t 0:14:31 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-33.mp3
ffmpeg -y -ss 8:52:22 -t 0:16:19 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-34.mp3
ffmpeg -y -ss 9:08:41 -t 0:17:03 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-35.mp3
ffmpeg -y -ss 9:25:44 -t 0:17:23 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-36.mp3
ffmpeg -y -ss 9:43:07 -t 0:15:54 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-37.mp3
ffmpeg -y -ss 9:59:01 -t 0:16:30 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-38.mp3
ffmpeg -y -ss 10:15:31 -t 0:17:05 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-39.mp3
ffmpeg -y -ss 10:32:36 -t 0:20:06 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-40.mp3
ffmpeg -y -ss 10:52:42 -t 0:22:47 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-41.mp3
ffmpeg -y -ss 11:15:29 -t 0:19:49 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-42.mp3
ffmpeg -y -ss 11:35:18 -t 0:16:32 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-43.mp3
ffmpeg -y -ss 11:51:50 -t 0:09:24 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-44.mp3
ffmpeg -y -ss 12:01:14 -t 0:04:01 -i DragonWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DragonWar-chapter-45.mp3


mv DragonWar.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 4` ; do mkdir $i; mv DragonWar-chapter-$i* $i/; done
for i in `seq 0 4` ; do cd $i; dotracks.sh 'WotC' 'DragonWar'; cd ..; done
