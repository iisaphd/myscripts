ffmpeg -y -ss 0:00:00 -t 0:04:04 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-00.mp3
ffmpeg -y -ss 0:04:04 -t 0:13:22 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-01.mp3
ffmpeg -y -ss 0:17:26 -t 0:16:32 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-02.mp3
ffmpeg -y -ss 0:33:58 -t 0:13:24 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-03.mp3
ffmpeg -y -ss 0:47:22 -t 0:20:10 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-04.mp3
ffmpeg -y -ss 1:07:32 -t 0:18:23 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-05.mp3
ffmpeg -y -ss 1:25:55 -t 0:17:57 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-06.mp3
ffmpeg -y -ss 1:43:52 -t 0:18:06 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-07.mp3
ffmpeg -y -ss 2:01:58 -t 0:14:40 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-08.mp3
ffmpeg -y -ss 2:16:38 -t 0:22:26 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-09.mp3
ffmpeg -y -ss 2:39:04 -t 0:17:36 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-10.mp3
ffmpeg -y -ss 2:56:40 -t 0:17:57 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-11.mp3
ffmpeg -y -ss 3:14:37 -t 0:14:13 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-12.mp3
ffmpeg -y -ss 3:28:50 -t 0:11:57 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-13.mp3
ffmpeg -y -ss 3:40:47 -t 0:15:57 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-14.mp3
ffmpeg -y -ss 3:56:44 -t 0:21:25 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-15.mp3
ffmpeg -y -ss 4:18:09 -t 0:22:12 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-16.mp3
ffmpeg -y -ss 4:40:21 -t 0:22:05 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-17.mp3
ffmpeg -y -ss 5:02:26 -t 0:14:54 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-18.mp3
ffmpeg -y -ss 5:17:20 -t 0:10:20 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-19.mp3
ffmpeg -y -ss 5:27:40 -t 0:09:21 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-20.mp3
ffmpeg -y -ss 5:37:01 -t 0:09:26 -i ABriefHistoryofTime.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ABriefHistoryofTime-Chapter-21.mp3


mv ABriefHistoryofTime.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv ABriefHistoryofTime-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Science' 'ABriefHistoryofTime'; cd ..; done
