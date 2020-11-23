ffmpeg -y -ss 0:00:00 -t 0:39:26 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-01.mp3
ffmpeg -y -ss 0:39:26 -t 0:35:52 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-02.mp3
ffmpeg -y -ss 1:15:18 -t 0:35:54 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-03.mp3
ffmpeg -y -ss 1:51:12 -t 0:34:12 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-04.mp3
ffmpeg -y -ss 2:25:24 -t 0:33:37 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-05.mp3
ffmpeg -y -ss 2:59:01 -t 0:35:31 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-06.mp3
ffmpeg -y -ss 3:34:32 -t 0:33:25 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-07.mp3
ffmpeg -y -ss 4:07:57 -t 0:34:12 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-08.mp3
ffmpeg -y -ss 4:42:09 -t 0:35:26 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-09.mp3
ffmpeg -y -ss 5:17:35 -t 0:38:39 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-10.mp3
ffmpeg -y -ss 5:56:14 -t 0:31:23 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-11.mp3
ffmpeg -y -ss 6:27:37 -t 0:34:27 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-12.mp3
ffmpeg -y -ss 7:02:04 -t 0:29:37 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-13.mp3
ffmpeg -y -ss 7:31:41 -t 0:27:59 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-14.mp3
ffmpeg -y -ss 7:59:40 -t 0:34:04 -i BriefHistoryoftheDead.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BriefHistoryoftheDead-Chapter-15.mp3
mv BriefHistoryoftheDead.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv BriefHistoryoftheDead-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Kevin Brockmeier' 'BriefHistoryoftheDead'; cd ..; done
for i in `seq 10 15` ; do mkdir $i; mv BriefHistoryoftheDead-Chapter-$i* $i/; done
for i in `seq 10 15` ; do cd $i; dotracks.sh 'Kevin Brockmeier' 'BriefHistoryoftheDead'; cd ..; done
