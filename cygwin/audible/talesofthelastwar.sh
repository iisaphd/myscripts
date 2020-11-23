ffmpeg -y -ss 0:00:00 -t 0:04:04 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-0.mp3
ffmpeg -y -ss 0:04:04 -t 0:52:56 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-1.mp3
ffmpeg -y -ss 0:57:00 -t 0:59:31 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-2.mp3
ffmpeg -y -ss 1:56:32 -t 1:17:44 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-3.mp3
ffmpeg -y -ss 3:14:16 -t 1:03:48 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-4.mp3
ffmpeg -y -ss 4:18:05 -t 1:05:48 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-5.mp3
ffmpeg -y -ss 5:23:53 -t 1:03:30 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-6.mp3
ffmpeg -y -ss 6:27:24 -t 1:11:06 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-7.mp3
ffmpeg -y -ss 7:38:30 -t 1:24:15 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-8.mp3
ffmpeg -y -ss 9:02:46 -t 1:09:00 -i TalesoftheLastWar.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TalesoftheLastWar-chapter-9.mp3
mv TalesoftheLastWar.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir $i; mv TalesoftheLastWar-chapter-$i* $i/; done
for i in `seq 0 9` ; do cd $i; dotracks.sh 'WotC' 'TalesoftheLastWar'; cd ..; done
